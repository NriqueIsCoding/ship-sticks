Rails.application.routes.draw do

  resources :sessions
  post '/find' => 'products#find'

  root 'home#index'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
