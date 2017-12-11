class RemoveDiaryIdFromTags < ActiveRecord::Migration[5.1]
  def up
    remove_column :tags, :diary_id, :integer
  end

  def down
    add_column :tags, :diary_id, :integer
  end
end
