Rails.application.routes.draw do
  root to: "pages#home"
  resources :draws do
    resources :party_members
  resources :draws do
    collection do
      get :assign
    end
  end
  end
end
