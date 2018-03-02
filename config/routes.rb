Rails.application.routes.draw do

  devise_for :users

  resources :pens do
    resources :reviews, except: [:show, :index]
  end

  root 'pens#index'
end
