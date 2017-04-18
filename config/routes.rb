Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }
  resources :clothings
  resources :users , only: [:show]
  root to: 'pages#home'
end


