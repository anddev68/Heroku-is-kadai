Rails.application.routes.draw do
  get 'game/delete'
  get 'session/new'
  get 'session/delete'
  
  resources :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # new game
  #get '/', to: 'game#index'
  get '/game', to: 'game#index'

  # game result
  post '/win', to: 'game#win'
  post '/lose', to: 'game#lose'
  post '/draw', to: 'game#draw'

  # login
  get '/login', to: 'session#new'
  post '/login', to: 'session#new'

  # logout
  get '/logout', to: 'session#delete'

  # register
  get '/register', to: 'users#new'

  # users
  get '/users', to: 'users#index'


end
