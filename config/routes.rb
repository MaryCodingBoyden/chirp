Rails.application.routes.draw do

  root 'bios#index'
  devise_for :user
  resources :bios

  resources :posts do
    member do
      get 'like'
      get 'unlike'
     end
   end

end
