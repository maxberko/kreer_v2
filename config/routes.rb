Rails.application.routes.draw do
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'

  resources :tests, only: %i[index show create new] do
    get '/take', to: 'tests#take'
    get 'user/:user_id/result', to: 'tests#result', as: :candidate_result
    resources :inputs, only: %i[create]
  end

  devise_for :users

  get '/contact', to: 'pages#contact'
end
