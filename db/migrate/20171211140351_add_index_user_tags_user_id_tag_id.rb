class AddIndexUserTagsUserIdTagId < ActiveRecord::Migration[5.1]
  def change
    add_index  :user_tags, [:user_id, :tag_id], unique: true
  end
end
