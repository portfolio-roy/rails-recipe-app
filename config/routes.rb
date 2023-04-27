Rails.application.routes.draw do
  root "foods#index"
  devise_for :users
  resources :recipes
  resources :foods, only: [:index, :show, :new, :create, :destroy]
end
