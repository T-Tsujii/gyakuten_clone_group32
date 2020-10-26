class MoviesController < ApplicationController
  def index
    @movies = Movie.order(id: :asc)
    @viewed_movie_ids = current_user.viewings.pluck(:movie_id)
  end
end