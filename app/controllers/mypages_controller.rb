class MypagesController < ApplicationController

  class Genre
    attr_accessor :viewing, :total, :percentage, :genre
    def initialize(genre_ids, genre)
      @viewing = Viewing.where(movie_id: genre_ids).count
      @total = genre_ids.count
      @percentage = @total != 0 ? @viewing * 100 / @total : 0
      @genre = genre
    end
  end

  def progress
    basic_ids = Movie.where(genre: "Basic").order(id: :asc).ids
    git_ids = Movie.where(genre: "Git").order(id: :asc).ids
    ruby_ids = Movie.where(genre: "Ruby").order(id: :asc).ids
    rails_ids = Movie.where(genre: "Ruby on Rails").order(id: :asc).ids

    genres = [
      Genre.new(basic_ids, "Basic"),
      Genre.new(git_ids, "Git"),
      Genre.new(ruby_ids, "Ruby"),
      Genre.new(rails_ids, "Ruby on Rails")
    ]

    @progress = genres.map do |genre|
      {
        genre: genre.genre,
        total: genre.total,
        current: genre.viewing,
        percentage: genre.percentage
      }
    end
  end
end