Rails.application.routes.draw do

  resources :pictures
  devise_for :users
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pictures#index'
end