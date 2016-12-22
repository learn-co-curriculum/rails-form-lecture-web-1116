class ArtistsController < ApplicationController
  def new
  end

  def create
    @artist = Artist.create(name: params[:artist][:name])
    redirect_to "/artists/#{@artist.id}"
  end

  def show
    @artist = Artist.find(params[:id])
    render :show
  end

  def edit
    @artist = Artist.find(params[:id])
    render :edit
  end

  def update
    binding.pry
    @artist = Artist.find(params[:id])
    @artist.update(name: params[:artist][:name])
  end
end
