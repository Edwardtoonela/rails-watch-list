Rails.application.routes.draw do

  resources :lists do
    collection do
      get :top
    end
  end

  resources :lists do
    member do
      get :bookmarks
      get :movies
    end
  end

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
