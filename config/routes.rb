Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #mechanics
  get '/mechanics', to: 'mechanics#index'
  get '/mechanics/:mechanic_id', to: 'mechanics#show'

  #amusement parks
  get '/amusement-parks/:amusement_park_id', to: 'amusement_parks#show'

  #mechanic ride
  post '/mechanic-rides/:mechanic_id', to: 'mechanic_rides#create'
end
