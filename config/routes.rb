Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
    get 'sign_out', to: 'devise/sessions#destroy'
  end


  resources :pens do
    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end

  root 'pens#index'
end
