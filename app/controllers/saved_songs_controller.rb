class SavedSongsController < ApplicationController
  def index
    @mysongs = true
    @saved_songs = current_user.saved_songs
  end

  def new
  end

  def create
    @saved_song = SavedSong.new(song_id: params[:song_id])
    @saved_song.student_id = current_user.id
    @saved_song.status = "To do"
    @saved_song.save
    redirect_to saved_songs_path
  end

  def destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_saved_song
    @saved_song = SavedSong.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def saved_song_params
    params.require(:saved_songs).permit(:student_id, :song_id)
  end
end
