class PagesController < ApplicationController

  def index
    @topic = Topic.new
    @popular = Topic.top_5
    twitter_connection = TwitterConnection.new
    twitter = twitter_connection.client
    @trending = twitter.trends(23424977)
    @results = current_user.search_results_for_topics
  end

end
