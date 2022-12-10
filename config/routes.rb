Rails.application.routes.draw do

  resources :draws do
    resources :party_members
  end

  root to: "pages#home"
end
