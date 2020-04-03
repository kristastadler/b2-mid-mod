Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #mechanics
  get '/mechanics', to: 'mechanics#index'

  #amusement parks
  get '/amusement-parks/:amusement_park_id', to: 'amusement_parks#show'
end
