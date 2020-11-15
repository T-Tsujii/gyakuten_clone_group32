class MypagesController < ApplicationController

  def progress
    @viewings = Viewing.count
    @moives = Movie.count
  end

end