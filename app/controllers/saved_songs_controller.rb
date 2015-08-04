class SavedSongsController < ApplicationController
  def index
    @saved_songs = current_user.saved_songs
  end

  def new
  end

  def create
    @saved_song = SavedSong.new(params["saved_song"])
    @saved_song.save
  end

  def destroy
  end
end
