Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "movies#index"
  resources :movies do 
    resource :viewings, only: [:create, :destroy]
  end  
  resources :aws_texts
end