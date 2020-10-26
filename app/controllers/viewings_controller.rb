class ViewingsController < ApplicationController
  def create
    current_user.viewings.create!(movie_id: params[:movie_id])
    @movie = Movie.find(params[:movie_id])
  end

  def destroy
    current_user.viewings.find_by(movie_id: params[:movie_id]).destroy!
    @movie = Movie.find(params[:movie_id])
  end
end