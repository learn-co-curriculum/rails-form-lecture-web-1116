class GenresController < ApplicationController
  def new
  end

  def create
    @genre = Genre.create(name: params[:genre][:name])
    redirect_to "/genres/#{@genre.id}"
  end

  def show
    @genre = Genre.find(params[:id])
    render :show
  end

  def edit
    @genre = Genre.find(params[:id])
    render :edit
  end

  def update
    binding.pry
  end
end
