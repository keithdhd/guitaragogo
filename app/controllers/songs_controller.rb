class SongsController < ApplicationController
  def index
    if params[:q].present?
      @q = Song.ransack(params[:q])
      @songs = @q.result(distinct: true)
    else 
      @songs = Song.all
    end    
  end

  def new
  end

  def create
  end
end
