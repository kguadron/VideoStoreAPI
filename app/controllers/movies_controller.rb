class MoviesController < ApplicationController
  def show
    movie = Movie.find_by(id: params[:id])
    if movie
      render json: movie.as_json(only: [:title, :overview, :release_date, :inventory, :available_inventory]), status: :ok
    else
      render status: :error, json: { errors: { id: "Movie does not exist" } }
    end
  end

  def index
    movies = Movie.all
    render status: :ok, json: movies.as_json(only: [:id, :title, :release_date])
  end

  private

  def movie_params
    return params.require(:movie).permits(:title, :overview, :release_date, :inventory)
  end
end
