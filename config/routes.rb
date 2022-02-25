Rails.application.routes.draw do

  root to: 'lists#index'
  resources :lists do
    collection do
      get :top
    end
    member do
      get :bookmarks
      get :movies
    end
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
