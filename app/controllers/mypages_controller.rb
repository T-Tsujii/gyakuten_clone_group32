class MypagesController < ApplicationController

  def progress
    @viewings = Viewing.count
    @movies = Movie.count
    @percentage = @viewings * 100 / @movies
  end

end