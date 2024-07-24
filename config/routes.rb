Rails.application.routes.draw do

  # get 'drivers/title', to: 'drivers#index'
  # resources :drivers
  # resources :drivers do
  #   resources :cars
  # end
  # scope module: '/admin/drivers' do
  #   resources :drivers
  # end

  # get 'clients/index', as: 'clients'
  # scope 'admin' do
  #   resources :drivers
  # end

  resources :drivers do
    get 'preview', on: :member
  end

  # get 'clients/index', as: :rails_health_check
  # root 'clients#index'
  # get 'clients/new' , to: "clients#new"
  # post 'clients/create' , to: "clients#create" , new_client:true
  # get 'clients/get' , to: "clients#get"
  # get 'clients/index' , to: "clients#index"
  # get 'hello' ,to: redirect('/clients/get')
  # get '*hello*' , to: "clients#index"


end
