class RenameCommentBodyColumnToComments < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :comment_body, :content
  end
end
