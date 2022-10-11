Rails.application.routes.draw do
  resources :enrollments
  resources :subjects
  resources :teachers
  resources :students
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "enrollments#index"
end
