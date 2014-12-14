class PagesController < ApplicationController

  def index
    @topic = Topic.new
    @results = current_user.search_results_for_topics
  end

end
