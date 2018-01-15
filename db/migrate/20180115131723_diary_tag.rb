class DiaryTag < ActiveRecord::Migration[5.1]
  def change
    drop_table :diary_tags
  end
end
