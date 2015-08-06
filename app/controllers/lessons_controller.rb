class LessonsController < ApplicationController
  before_action :authenticate, only: [:create, :edit, :new, :index]
  
  def index
    @lessons = Lesson.where("song_id=?", params[:song_id])
    @song = Song.find(params[:song_id])
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.instrument_id = 1
    @lesson.teacher_id = current_user.id

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to lessons_path(song_id:@lesson.song.id), notice: 'Sweet! Good work. You created a new lesson' }
        format.json { render :show, status: :created, location: lessons_path }
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

  # Never trust parameters from the scary internet, only allow the white list through.
  def lesson_params
    params.require(:lesson).permit(:teacher_id, :title, :video_url, :intrument_id, :song_id)
  end
end
