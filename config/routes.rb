Rails.application.routes.draw do
  root to: 'users#home'
  resources :clothings
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users , only: [:show]
end


