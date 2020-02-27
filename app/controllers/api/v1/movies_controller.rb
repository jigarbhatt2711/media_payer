class Api::V1::MoviesController < ApplicationController
  def index
    movies = Movie.order(:created_at)
    render json: movies
  end

  def movies_seasons
    movies = Movie.order(:created_at)
    seasons = Season.order(:created_at)

    render json: {
      movies: ActiveModel::ArraySerializer.new(movies, each_serializer: MovieSerializer),
      seasons: ActiveModel::ArraySerializer.new(seasons, each_serializer: SeasonSerializer)
    }
  end
end
