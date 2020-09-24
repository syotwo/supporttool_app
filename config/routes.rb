Rails.application.routes.draw do
  
  get 'emotions/index'
  get 'emotions/create'
  get 'emotions/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create] 

  resources :items 
  resources :item_lists do
    resources :items, only: [:index, :create] 
  end
  resources :favorites, only: [:create, :destroy]
  resources :emotions
end
