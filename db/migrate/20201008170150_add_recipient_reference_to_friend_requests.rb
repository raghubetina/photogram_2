class AddRecipientReferenceToFriendRequests < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :friend_requests, :users, column: :recipient_id
    add_index :friend_requests, :recipient_id
    change_column_null :friend_requests, :recipient_id, false
  end
end
