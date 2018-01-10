class RenameCommentColumnToComments < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :comment, :comment_body
  end
end
