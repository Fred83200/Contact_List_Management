Rails.application.routes.draw do
  resources :contacts, only: [:new, :create, :show, :index, :destroy]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: [:index]
end
