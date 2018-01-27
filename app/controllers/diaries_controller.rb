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

  def edit
    @diary = Diary.find(params[:diary_id])
  end

  def update
    @diary = Diary.find(params[:diary][:diary_id])
    if @diary.update(diary_params)
      redirect_to diaries_path, notice: '投稿のの編集に成功しました'
    else
      render :new
    end
  end

  def destroy
    @diary = Diary.find(params[:diary_id])
    if @diary.destroy
      redirect_to diaries_path, notice: '投稿を削除しました'
    else
      redirect_to diaries_path, alert: '投稿の削除に失敗しました'
    end
  end

  def index
    @diaries = Diary.all
  end

  def tagIndex
    @tags = Diary.tagged_with(params[:selected_name])
  end

  private
  def diary_params
    params.require(:diary).permit(:title, :label_list, :body)
  end

end
