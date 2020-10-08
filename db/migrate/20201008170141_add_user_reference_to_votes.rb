class AddUserReferenceToVotes < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :votes, :users
    add_index :votes, :user_id
    change_column_null :votes, :user_id, false
  end
end
