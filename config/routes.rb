Rails.application.routes.draw do
  resources :courses
  get 'welcomes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "students#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :students
end
