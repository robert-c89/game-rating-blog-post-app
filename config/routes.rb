Rails.application.routes.draw do
  resources :games
  resources :ratings
  get :game_info, :to => 'ratings#game_info'

  devise_for :users
  root 'ratings#new'

  mount API::Base => '/api'

end
