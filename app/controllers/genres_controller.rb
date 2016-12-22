class GenresController < ApplicationController
  def new
  end

  def create
    @genre = Genre.create(name: params[:genre][:name], song_ids: params[:genre][:song_ids])
    redirect_to "/genres/#{@genre.id}"
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
  end
end
