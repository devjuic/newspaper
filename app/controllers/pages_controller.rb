class PagesController < ApplicationController

  def index
    @topic = Topic.new
    @popular = Topic.top_5
    @results = current_user.search_results_for_topics
  end

end
