Rails.application.routes.draw do
  devise_for :users, sign_out_via: [:get, :delete]

  authenticated :user do
    root 'appointments#index', as: :authenticated_root
  end

  devise_scope :user do
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :appointments

  get 'about', to: 'pages#about'
  get 'settings', to: 'users#settings'
  post 'toggle_dark_mode', to: 'application#toggle_dark_mode'
end