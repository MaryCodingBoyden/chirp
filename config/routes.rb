Rails.application.routes.draw do

  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  root 'bios#index'
  resources :bios
  devise_for :user


  resources :posts do
    member do
      get 'like'
      get 'unlike'
     end
   end

end
