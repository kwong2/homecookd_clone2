Rails.application.routes.draw do

  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/about'

  get 'sessions/new'


  resources :reservations
  resources :foods
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/signup' => 'users#new'
  post '/signup' =>'users#create'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
