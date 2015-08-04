class LessonsController < ApplicationController
  def index
    @lessons = Lesson.where("song_id=?", params[:song_id])
  end

  def new
  end

  def create
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
