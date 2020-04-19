Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  resources :users, only: [:edit,:show,:update]
 
  

  get 'homes/about'
  get 'homes/top'
end
