Rails.application.routes.draw do
  devise_for :users
root 'foods#index'
resources :recipes
resources :foods, only: [:index, :create, :destroy]
end
