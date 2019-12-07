Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/home', to: 'home#index'
  get '/authorisation', to: 'home#authorisation'

  get '/signin', to: 'home#signin'

  get '/signup', to: 'home#signup'
  get '/signup/set_name', to: 'home#set_name'
  get '/signup/set_nickname', to: 'home#set_nickname'

  get '/project_menu', to: 'home#project_menu'

  get '/project_menu/import_project', to: 'home#import_project'
  get '/project_menu/import_project/import_setting', to: 'home#import_setting'

  get '/project_menu/add_project', to: 'home#add_project'
  get '/project_menu/add_project/add_setting', to: 'home#add_setting'

  get '/profile', to: 'home#profile'

  get '/enter_password', to: 'home#enter_password'

  get '/set_new_password', to: 'home#set_new_password'

  get '/test', to: 'home#test'

  resource  :home
  resources :projects, only: :index
end
