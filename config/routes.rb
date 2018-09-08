Rails.application.routes.draw do

  root 'bios#index'
  resources :bios
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
