Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: %i[index show new create]

  resources :items
  resources :item_lists do
    resources :items, only: %i[index create]
  end
  resources :favorites, only: %i[create destroy]
  resources :emotions
end
