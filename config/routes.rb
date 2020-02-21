Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :ingredients
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [ :destroy ]
end
