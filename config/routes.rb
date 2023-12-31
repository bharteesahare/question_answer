Rails.application.routes.draw do
  # get 'answers/create'
  # get 'questions/index'
  # get 'questions/show'
  # get 'questions/new'
  # get 'questions/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :questions do
    resources :answers, only: :create
  end

  root 'questions#index'
end
