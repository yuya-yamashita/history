class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to diaries_path, notice: 'コメントの登録に成功しました'
    else
      redirect_to comment_new_path, alert: 'コメントの登録に失敗しました'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:diary_id, :comment_body)
  end
end
