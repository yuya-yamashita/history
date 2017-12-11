class RemoveStringFromTags < ActiveRecord::Migration[5.1]
  def change
    remove_column :tags, :string, :string
  end
end
