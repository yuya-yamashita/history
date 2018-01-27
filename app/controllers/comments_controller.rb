class CommentsController < ApplicationController
  #before_action メソッド名
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
    @comment = Comment.find(params[:comment_id])
  end

  def update
    @comment = Comment.find(params[:comment][:comment_id])
    if @comment.update(comment_params)
      redirect_to diaries_path, notice: 'コメントの編集に成功しました'
    else
      render :new
    end
  end


  def destroy
    #@diary = current_user.diaries.find(params[:diary_id])
    @comment = Comment.find(params[:comment_id])
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
end
