Rails.application.routes.draw do

  root 'bios#index'
  resources :bios

  resources :posts do
    member do
      get 'like'
      get 'unlike'
     end
   end

end
