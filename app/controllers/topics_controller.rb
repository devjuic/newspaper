class TopicsController < ApplicationController

  respond_to :js

  def create
    @topic = Topic.where(topic_params).first_or_create
    if @topic.save
      current_user.topics << @topic
      @results = current_user.search_results_for_topics
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    @results = current_user.search_results_for_topics
  end

  private

    def topic_params
      params.require(:topic).permit(:name)
    end

end