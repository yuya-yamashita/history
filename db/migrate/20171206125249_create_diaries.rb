class CreateDiaries < ActiveRecord::Migration[5.1]
  def change
    create_table :diaries do |t|
     t.text :title, :null => false
     t.text :body, :null => false
     t.integer :user_id, :null => false

      t.timestamps
    end
    add_index :diaries, :title
  end
end
