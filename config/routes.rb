Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  get 'home/index'

  get 'home/about'

  get '/welcome' => 'welcome#index'
  get '/aided' => 'welcome#aided'

  devise_for :users
  resources :users, :only => [:show]
  resources :listings
  root 'listings#index'
end
