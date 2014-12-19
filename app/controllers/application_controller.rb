class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_uuid
  helper_method :current_user

  def current_user
    @user ||= User.where(uuid: @uuid).first_or_create
  end

  def set_uuid
    if cookies[:user_uuid].present?
      @uuid = cookies[:user_uuid]
    else
      @uuid = SecureRandom.uuid
      cookies.permanent[:user_uuid] = @uuid
    end
  end

end
