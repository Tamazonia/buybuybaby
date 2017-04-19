Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
                   registrations: 'registrations'  }
  resources :users , only: [:show]
  root to: 'pages#home'

  resources :clothings do
    resources :purchases, only: [ :new, :create, :show, :destroy ]
  end

end
