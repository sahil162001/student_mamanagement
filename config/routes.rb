require 'sidekiq/web'
Rails.application.routes.draw do
  resources :courses
  resources :students
  root 'welcomes#index'
  mount Sidekiq::Web => "/sidekiq"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root "students#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
