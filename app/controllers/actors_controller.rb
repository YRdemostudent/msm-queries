class ActorsController < ApplicationController

  def all_actors

  @list_of_actors = Actor.all
    render({:template => "actors_template/all_actors.html.erb"})
  end 

  def actor_details
    actor_id = params.fetch("actor_id")
    @the_actor = Actor.where({:id => actor_id}).at(0) 
    
    render({:template => "actors_template/actor_details.html.erb"})
  end

end 
