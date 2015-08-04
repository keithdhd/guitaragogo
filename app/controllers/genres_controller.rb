class GenresController < ApplicationController
  def index
    @genres = Genre.all
    #binding pry
  end

  def show
    @genre = Genre.find(params[:id])
    @songs = @genre.songs
  end
end
