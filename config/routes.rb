Wordgame::Application.routes.draw do
  root :to => "games#new"
  get "users/list"
  get "home/index"
  resources :games
  devise_for :users
end
