Rails.application.routes.draw do
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'

  resources :tests, only: %i[index show create new] do
    get '/take', to: 'tests#take'
    resources :inputs, only: %i[create]
  end

  devise_for :users
end
