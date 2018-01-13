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

  def index
    @diaries = Diary.all
  end

  private
  def diary_params
    params.require(:diary).permit(:title, :body)
  end

end
