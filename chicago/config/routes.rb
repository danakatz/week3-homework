Rails.application.routes.draw do

  root 'places#index'
  get '/places' => 'places#index'
  get '/places/:id' => 'places#show'
  get '/places/:id/delete' => 'places#delete'

end
