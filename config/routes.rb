Rails.application.routes.draw do
  resources :player_stats
  resources :players
  resources :stats
  devise_for :users
  get 'adminpanel', to: 'pages#adminpanel', as: "adminpanel"
  root to: 'pages#home'
  post 'playerrate', to: "players#rate", as: "playerrate"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
