class RenameCountColumnToUsertags < ActiveRecord::Migration[5.1]
  def change
    rename_column :user_tags, :count, :tag_count
  end
end
