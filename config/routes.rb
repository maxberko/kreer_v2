Rails.application.routes.draw do
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'

  resources :tests, only: %i[index show create new] do
    get '/take', to: 'tests#take'
  end
  post '/test_questions/:id/inputs', to: "inputs#create", as: :test_question_inputs

  devise_for :users

  get '/contact', to: 'pages#contact'
end
