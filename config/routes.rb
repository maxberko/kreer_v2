Rails.application.routes.draw do
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'

  resources :tests, only: %i[index show create new] do
    get '/take', to: 'tests#take'
    get 'user/:user_id/result', to: 'tests#result', as: :candidate_result
    get 'user/:user_id/radar', to: 'tests#radar', as: :candidate_radar

    resources :inputs, only: %i[create]
  end

  devise_for :users
  post '/test_questions/:id/inputs', to: "inputs#create", as: :test_question_inputs
  get '/contact', to: 'pages#contact'

  get '/dashboard', to: 'pages#dashboard', as: 'user_root'
end
