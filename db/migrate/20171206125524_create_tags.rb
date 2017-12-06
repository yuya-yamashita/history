class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :name, :null => false
      t.string :string, :null => false
      t.integer :diary_id, :null => false

      t.timestamps
    end
    add_index :tags, :name
  end
end
