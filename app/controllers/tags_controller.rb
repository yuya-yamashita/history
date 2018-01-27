class TagsController < ApplicationController
  def new
  end

  def index
    @tags = Diary.tagged_with(params[:selected_name])
  end
end
