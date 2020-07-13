Rails.application.routes.draw do
  root to: 'pets#index'
  resources :pets
  get 'pets/random', to: 'pets#random', as: 'random'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
