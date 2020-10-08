class AddSenderReferenceToFriendRequests < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :friend_requests, :users, column: :sender_id
    add_index :friend_requests, :sender_id
    change_column_null :friend_requests, :sender_id, false
  end
end
