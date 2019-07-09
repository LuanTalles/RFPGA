Rails.application.routes.draw do
  root  'static_pages#home'

  resources :seats
  resources :fpgas

  devise_for :users
  resources :users

  get 'file_uploads/new'

  get   'about'   =>  'static_pages'

  get   'login'   =>  'static_pages'

  get   'signup'   =>  'static_pages'

  get   'contact'   =>  'static_pages'

  get '/seat/:id/use', to: 'seats#use', as: 'use'

  get '/seat/:id/free', to: 'seats#free', as: 'free'

  put '/fpga/:id', to: 'fpgas#upload_bitstream', as: 'up_bits'

  get '/seat/:id/flash_msp', to: 'seats#flash_msp', as: 'flash_msp', remote: true
  get '/seat/:id/flash_msp2', to: 'seats#flash_msp2', as: 'flash_msp2', remote: true

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
