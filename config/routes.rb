Wordgame::Application.routes.draw do
  get "users/list"
  get "home/index"
  resources :games
  devise_for :users
  root :to => "home#index"
end
