Rails.application.routes.draw do
  root to: "pages#home"
  resources :draws do
    resources :party_members
  end
end
