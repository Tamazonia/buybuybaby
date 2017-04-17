Rails.application.routes.draw do
<<<<<<< HEAD

  get 'clothings/new'

  get 'clothings/create'

  get 'clothings/delete'

  get 'clothings/show'

  get 'clothings/edit'

  get 'clothings/update'

  get 'clothings/index'

=======
  root to: 'users#home'
  resources :clothings
>>>>>>> d0244e48e7c7a32c7abfdf7e90508bb94a1653b4
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users , only: [:show]
end
