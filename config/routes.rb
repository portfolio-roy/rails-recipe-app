Rails.application.routes.draw do
root 'foods#index'
resources :recipes
resources :foods, only: [:index, :new, :create, :destroy]
end
