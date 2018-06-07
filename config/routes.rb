Rails.application.routes.draw do
  get 'session/new'
  get 'session/delete'
  
  resources :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # new game
  #get '/', to: 'game#index'
  get '/game', to: 'game#index'

  # login
  get '/login', to: 'session#new'
  post '/login', to: 'session#new'

  # logout
  get '/logout', to: 'session#delete'

end
