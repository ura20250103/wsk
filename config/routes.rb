Rails.application.routes.draw do
  
  resources :categories, only: [:index,:new,:create]

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  resources :users, only: [:edit,:show,:update]
 
  

  get 'homes/about'
  get 'homes/top'
end
