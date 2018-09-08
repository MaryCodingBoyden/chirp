Rails.application.routes.draw do

  root 'bios#index'
  resources :bios
 devise_for :users


  resources :posts do
    member do
      get 'like'
      get 'unlike'
     end
   end

end
