class DiariesController < ApplicationController
  def new
    @diary = Diary.new
  end

  def create
    @diary = current_user.diaries.create(diary_params)
    if @diary.save
      redirect_to diaries_path, notice: '投稿に成功しました'
    else
      render :new
    end
  end

  def destroy
    @diary = current_user.diaries.find(params[:diary_id])
    @diary.destroy
    redirect_to diaries_path, notice: '投稿を削除しました'
  end

  def index
    @diaries = Diary.all
  end

  private
  def diary_params
    params.require(:diary).permit(:title, :label_list, :body)
  end

end
