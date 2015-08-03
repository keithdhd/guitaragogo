class SavedSongsController < ApplicationController
  def index
    @songs = current_user.songs
  end

  def new
  end

  def create
  end

  def destroy
  end
end
