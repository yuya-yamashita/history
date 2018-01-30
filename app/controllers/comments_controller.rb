class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to diaries_path, notice: 'コメントの登録に成功しました'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to diaries_path, notice: 'コメントの編集に成功しました'
    else
      render :new
    end
  end


  def destroy
    if @comment.destroy
      redirect_to diaries_path, notice: 'コメントを削除しました'
    else
      redirect_to diaries_path, alert: 'コメントの削除に失敗しました'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:diary_id, :content)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

end
