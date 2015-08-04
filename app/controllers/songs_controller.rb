class SongsController < ApplicationController
  def index
    @songs = Song.all
    # @saved_song = SavedSong.all
    # @saved_song.save

    # respond_to do |format|
    #   if @saved_song.save
    #     format.html { redirect_to login_path, notice: 'Sweet! Good work. You created a new lesson' }
    #     format.json { render :show, status: :created, location: lessons_path }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @lesson.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def new
  end

  def create
  end
end
