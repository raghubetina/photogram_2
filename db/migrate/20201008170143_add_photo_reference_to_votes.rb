class AddPhotoReferenceToVotes < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :votes, :photos
    add_index :votes, :photo_id
    change_column_null :votes, :photo_id, false
  end
end
