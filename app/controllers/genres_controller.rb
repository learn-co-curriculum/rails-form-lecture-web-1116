class GenresController < ApplicationController
  def new
  end

  def create
    @genre = Genre.create(name: params[:artist][:name], song_ids: params[:artist][:song_ids])
    redirect_to "/genres/#{@genre.id}"
  end

  def show
    @genre = Genre.find(params[:id])
    render :show
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(name: params[:genre][:name], song_ids: params[:genre][:song_ids])
    redirect_to "/genres/#{@genre.id}"
  end
end
