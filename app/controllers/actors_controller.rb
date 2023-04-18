class ActorsController < ApplicationController

  def all_actors
  @list_of_actors = Actor.all
    render({:template => "actors_template/all_actors.html.erb"})
  end 

  def actor_details
  
    actor_id = params.fetch("actor_id")
    @the_actor = Actor.where({:id => actor_id}).at(0)
    @director = Director.where({:id=> @the_movie}).at(0)

    #@filmography = Movie.where({:director_id => the_id})


  render({:template => "actors_template/actor_details.html.erb"})
  end

end 
