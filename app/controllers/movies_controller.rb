class MoviesController < ApplicationController

  def all_movies
    @list_of_movies = Movie.all
    
     render({:template => "movie_template/all_movies.html.erb"})
   end 
 
   def movie_details

    movie_id = params.fetch("movie_id")
    @the_movie = Movie.where({:id =>movie_id}).at(0)
    @director = Director.where({:id=> @the_movie}).at(0)
    render({:template=>"movie_template/movie_details.html.erb"})
 
   end 
end 
