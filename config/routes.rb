Rails.application.routes.draw do

  root 'students#index'
  get 'hello' => 'students#temp'
  resources :students
  # resources :articles
  # resources :comments

end
