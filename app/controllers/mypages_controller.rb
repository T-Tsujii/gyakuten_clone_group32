class MypagesController < ApplicationController

  def progress
    basic = 1..7
    git = 8..10
    ruby = 11..17
    rails = 18..31

    @basic_viewings = Viewing.where(movie_id: basic).count
    @basic_movies = Movie.where(id: basic).count
    @basic_percentage = @basic_viewings * 100 / @basic_movies
    @git_viewings = Viewing.where(movie_id: git).count
    @git_movies = Movie.where(id: git).count
    @git_percentage = @git_viewings * 100 / @git_movies
    @ruby_viewings = Viewing.where(movie_id: ruby).count
    @ruby_movies = Movie.where(id: ruby).count
    @ruby_percentage = @ruby_viewings * 100 / @ruby_movies
    @rails_viewings = Viewing.where(movie_id: rails).count
    @rails_movies = Movie.where(id: rails).count
    @rails_percentage = @rails_viewings * 100 / @rails_movies
  end

end