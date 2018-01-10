Rails.application.routes.draw do

  resources :businesses

  resources :lists

  

  devise_for :users
  
  get 'user_root', to: 'businesses#index'
  
  root 'home#index'

end
