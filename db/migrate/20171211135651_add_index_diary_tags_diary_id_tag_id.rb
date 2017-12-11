class AddIndexDiaryTagsDiaryIdTagId < ActiveRecord::Migration[5.1]
  def change
    add_index  :diary_tags, [:diary_id, :tag_id], unique: true
  end
end
