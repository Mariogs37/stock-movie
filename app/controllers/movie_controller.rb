class MovieController < ApplicationController

  def movie
  end

  def movie_result
  end

  def get_movie
    @title = params['movie']
    @movie = HTTParty.get("http://www.omdbapi.com/?t=#{@title.split.join("+")}")
    @hash = JSON(@movie.body)
    render 'movie_result'
  end
end