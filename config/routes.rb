Rails.application.routes.draw do

  get 'clothings/new'

  get 'clothings/create'

  get 'clothings/delete'

  get 'clothings/show'

  get 'clothings/edit'

  get 'clothings/update'

  get 'clothings/index'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users , only: [:show]


end
