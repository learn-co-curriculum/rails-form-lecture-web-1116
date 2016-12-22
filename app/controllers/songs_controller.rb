class SongsController < ApplicationController
  def new
  end

  def create
    @song = Song.create(title: params[:song][:title])
    redirect_to "/songs/#{@song.id}"
  end

  def show
    @song = Song.find(params[:id])
    render :show
  end

  def edit
    @song = Song.find(params[:id])
    render :edit
  end

  def update
  end
end
