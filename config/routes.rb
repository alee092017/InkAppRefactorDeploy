Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :pens
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pens#index'
end
