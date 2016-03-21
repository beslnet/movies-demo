class MoviesController < ApplicationController
  def index
  end

  def save_movie
    if params[:title].present? && params[:studio].present? && params[:genre].present?
    Movie.new(
              title: params[:title],
              genre: params[:genre],
              year: params[:year],
              rating: params[:rating],
              studio: params[:studio]
      ).save

      redirect_to movies_index_path, notice:"Pelicula Creada"
    else
      flash[:alert] = "Complete todos los datos"
      render :index
    end
  end

  def show
    @movies = Movie.all.reverse
  end
end
