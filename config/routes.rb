Rails.application.routes.draw do
  resources :bios

  resources :posts do
    member do
      get 'like'
      get 'unlike'
     end
   end

end
