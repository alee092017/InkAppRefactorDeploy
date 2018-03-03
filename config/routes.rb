Rails.application.routes.draw do

  devise_for :users

  resources :pens do
    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end

  root 'pens#index'
end
