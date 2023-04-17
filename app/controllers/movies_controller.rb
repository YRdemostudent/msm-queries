class MoviesController < ApplicationController

  def all_movies
    @list_of_movies = Movie.all
    
     render({:template => "directors_template/all_movies.html.erb"})
   end 
 
   def movie_details

    movie_id = params.fetch("the_id")
    @the_movie = Movie.where({:id => the_movie_id}).at(0)

  # the_id = params.fetch("an_id")
  # @the_director = Director.where({ :id => the_id }).at(0)
  # @filmography = Movie.where({:director_id => @the_director.id})

    render({:template => "directors_template/movie_details.html.erb" }) 
   end 
end 
