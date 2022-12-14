Rails.application.routes.draw do
  root to: "pages#home"
  resources :draws  , shallow: true do
    resources :party_members
     collection do
      get :assign
    end
  end
  end
