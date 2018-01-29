class DiariesController < ApplicationController
  before_action :set_diary, only: [:edit, :update, :destroy]

  def set_diary
    @diary = Diary.find(params[:id])
  end

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

  def edit
  end

  def update
    if @diary.update(diary_params)
      redirect_to diaries_path, notice: '投稿の編集に成功しました'
    else
      render :new
    end
  end

  def destroy
    if @diary.destroy
      redirect_to diaries_path, notice: '投稿を削除しました'
    else
      redirect_to diaries_path, alert: '投稿の削除に失敗しました'
    end
  end

  def index
    @diaries = Diary.all
  end

  private
  def diary_params
    params.require(:diary).permit(:title, :label_list, :body)
  end

end
