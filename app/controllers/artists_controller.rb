class ArtistsController < ApplicationController
  def new
  end

  def create
    @artist = Artist.create(name: params[:artist][:name], song_ids: params[:artist][:song_ids])
    redirect_to "/artists/#{@artist.id}"
  end

  def show
    @artist = Artist.find(params[:id])
    render :show
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(name: params[:artist][:name], song_ids: params[:artist][:song_ids])
    redirect_to "/artists/#{@artist.id}"
  end
end
