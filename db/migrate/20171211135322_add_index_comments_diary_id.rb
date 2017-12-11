class AddIndexCommentsDiaryId < ActiveRecord::Migration[5.1]
  def change
    add_index :comments, :diary_id, :unique => true
  end
end
