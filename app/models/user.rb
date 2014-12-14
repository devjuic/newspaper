class User < ActiveRecord::Base
  has_many :topics

  def search_results_for_topics
    results = topics.map do |topic|
      GoogleSearch.new({search_type: "news", q: URI.encode(topic.name)}).results
    end
    results.flatten.select { |result| result.allowed_to_show_image? }.shuffle
  end
end
