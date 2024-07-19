Rails.application.routes.draw do
  devise_for :users

  # Routes for Posts
  resources :posts do
    # Nested routes for Comments under Posts
    resources :comments, only: [:create,:update] do
      member do
        get 'edit_comment'
        patch 'update_comment'
      end
    end
  end
  resources :comments, only: :destroy
  # Routes for Comments (outside the nested context if needed)
  resources :comments, only: [:index,:edit, :show,:update, :destroy]

  # Routes for Plants
  resources :plants, only: [:index, :show] do
    resources :tips, only: [:create]
    resources :neighbours, only: [:create]
  end

  # Routes for Lists
  resources :lists do
    # Nested routes for PlantLists under Lists
    resources :plant_lists, only: [:create]
  end

  # Routes for Tips
  resources :tips, except: [:create]

  # Routes for PlantLists (outside the nested context if needed)
  resources :plant_lists, only: [:index, :show,:update,:destroy]

  # Routes for Neighbours
  resources :neighbours, only: [:index, :show, :update, :destroy]
  root to: "pages#home"

  get 'a-propos', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'recrutement', to: 'pages#recrutement'
  get 'calendrier', to: 'pages#calendrier'
  get 'mentions-legales', to: 'pages#mentions_legales'
end
