Rails.application.routes.draw do
  get 'static_pages/home'

  resources :reservations
  resources :foods
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#new'

end
