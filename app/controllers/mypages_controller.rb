class MypagesController < ApplicationController

  class Genre
    attr_accessor :viewing, :movies, :percentage
    def initialize(genre_id)
      @viewing = Viewing.where(movie_id: genre_id).count
      @movies = genre_id.count
      @percentage = viewing * 100 / movies
    end
  end

  def progress
    basic_ids = Movie.where(genre: "Basic").order(id: :asc).ids
    git_ids = Movie.where(genre: "Git").order(id: :asc).ids
    ruby_ids = Movie.where(genre: "Ruby").order(id: :asc).ids
    rails_ids = Movie.where(genre: "Ruby on Rails").order(id: :asc).ids

    basic = Genre.new(basic_ids)
    git = Genre.new(git_ids)
    ruby = Genre.new(ruby_ids)
    rails = Genre.new(rails_ids)

    @progress = [
      {
        genre: "Basic",
        total: basic.movies,
        current: basic.viewing,
        percentage: basic.percentage
      },
      {
        genre: "Git",
        total: git.movies,
        current: git.viewing,
        percentage: git.percentage
      },
      {
        genre: "Ruby",
        total: ruby.movies,
        current: ruby.viewing,
        percentage: ruby.percentage
      },
      {
        genre: "Ruby on Rails",
        total: rails.movies,
        current: rails.viewing,
        percentage: rails.percentage
      }
    ]
  end

end