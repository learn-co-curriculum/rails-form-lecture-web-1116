class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.create(title: params[:song][:title], genre_ids: params[:song][:genre_ids], artist_ids: params[:song][:artist_ids])
    redirect_to "/songs/#{@song.id}"
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
  end
end
