# config/routes.rb
Rails.application.routes.draw do
  devise_for :users, sign_out_via: [:get, :delete]  # Allow both GET and DELETE

  # Root path for authenticated users
  authenticated :user do
    root 'appointments#index', as: :authenticated_root
  end

  # Root path for non-authenticated users
  root 'welcome#index'

  resources :appointments
end