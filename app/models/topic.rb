class Topic < ActiveRecord::Base
  has_many :topic_subscriptions
  has_many :users, through: :topic_subscriptions

  scope :top_5, -> {
    select("topics.id, topics.name, count(topic_subscriptions.topic_id) AS topics_count").
    joins(:topic_subscriptions).
    group("topics.id").
    order("topics_count DESC").
    limit(5)
  }

end
