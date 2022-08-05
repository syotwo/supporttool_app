Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'

  resources :items

  resources :item_lists do
    resources :items, only: %i[index create]
    resources :favorites, only: %i[create destroy]
    resources :likes, only: %i[create destroy]
  end

  resources :users, only: %i[index show new create] do
    member do
      get :favorites
    end
  end

  # resources :favorites, only: %i[create destroy]
  # resources :favorites do
  #   # resources :items, only: %i[index create]
  # end


  resources :emotions
end
