class CreateTopicSubscriptions < ActiveRecord::Migration
  def change
    create_table :topic_subscriptions do |t|
      t.integer :user_id
      t.integer :topic_id

      t.timestamps
    end
    add_index :topic_subscriptions, :topic_id
    add_index :topic_subscriptions, :user_id
    add_index :topic_subscriptions, [:user_id, :topic_id], :unique => true
  end
end
