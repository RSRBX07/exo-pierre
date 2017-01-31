Rails.application.routes.draw do
  resources :games

  post 'players', to: 'players#create'

  get 'players/index', to: 'players#index'

  get 'say/hello'

  get 'say/goodbye'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
