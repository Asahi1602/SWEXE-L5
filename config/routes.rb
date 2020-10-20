Rails.application.routes.draw do
  root 'users2#index'
  
  get 'users/main'
  get 'users/login'
  post 'users/login'
  root 'users#main'
  get 'users/logout'
  
  resources :users2, only: [:index, :new, :create, :destroy]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
