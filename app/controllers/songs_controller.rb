class SongsController < ApplicationController
  def new
  end

  def create
    @song = Song.create(title: params[:song][:title], artist_ids: params[:song][:artist_ids], genre_ids: params[:song][:genre_ids])
    redirect_to song_path(@song)
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
