Rails.application.routes.draw do
  resources :seats
  resources :fpgas
  get 'file_uploads/new'
  devise_for :users
  resources :users
  root  'static_pages#home'

  get   'about'   =>  'static_pages'

  get   'login'   =>  'static_pages'

  get   'signup'   =>  'static_pages'

  get   'contact'   =>  'static_pages'

  get   'seat3'   =>  'static_pages'

  get   'newseat'   =>  'static_pages'

  get '/seat/:id/use', to: 'seats#use', as: 'use'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
