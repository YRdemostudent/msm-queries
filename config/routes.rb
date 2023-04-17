Rails.application.routes.draw do
  get("/directors/eldest", {:controller => "directors", :action => "eldest"})
  get("/directors/youngest", {:controller => "directors", :action => "youngest"})
  
  get("/directors/:an_id", {:controller => "directors", :action => "director_details"})
  get("/", { :controller => "application", :action => "homepage" })
  
  get("/directors", {:controller => "directors", :action => "index"})
  
  get("/movies/:the_id", {:controller => "movies", :action => "movie_details"})
  get("/movies", {:controller => "movies", :action => "all_movies"})
end
