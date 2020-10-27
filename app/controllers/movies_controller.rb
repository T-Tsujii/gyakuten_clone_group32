class MoviesController < ApplicationController

  # 1ページの表示数
  PER_PAGE = 18

  def index
    @movies = Movie.order(id: :asc).page(params[:page]).per(PER_PAGE)
    @viewed_movie_ids = current_user.viewings.pluck(:movie_id)
  end
end
