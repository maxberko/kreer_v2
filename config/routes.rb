Rails.application.routes.draw do
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'

  resources :tests, only: %i[index show create new]

  devise_for :users

  get '/contact', to: 'pages#contact'
end
