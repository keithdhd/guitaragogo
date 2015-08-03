class LessonsController < ApplicationController
  def index
    @lessons = Lesson.where("song_id=?", params[:song_id])
  end

  def new
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end
end
