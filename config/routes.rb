Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/home', to: 'home#index'
  get '/authorisation', to: 'home#authorisation'
  get '/signin', to: 'home#signin'
  get '/project_menu', to: 'home#project_menu'

  resource  :home
  resources :projects, only: :index
end
