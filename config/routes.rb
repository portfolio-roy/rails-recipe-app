Rails.application.routes.draw do
root 'recipes#index'
  resources :foods, only: [:index, :create, :destroy]
end
