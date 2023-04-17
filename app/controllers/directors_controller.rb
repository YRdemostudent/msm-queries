class DirectorsController < ApplicationController

  def index
   @list_of_directors = Director.all
   
    render({:template => "directors_template/index.html.erb"})
  end 

  def eldest 
    @oldest = Director.where.not({:dob => nil}).order({:dob => :asc}).at(0)
    
    render({:template => "directors_template/eldest.html.erb"})
  end 

  def youngest

    render({:template => "directors_template/youngest.html.erb" })
  end

  def all_movies

    render({:template => "directors_template/all_movies.html.erb" })
  end 
end
