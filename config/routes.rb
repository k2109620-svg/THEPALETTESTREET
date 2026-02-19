Rails.application.routes.draw do
  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Devise（必ず上に置く）
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # Root
  root "home#index"

  # Home
  get "home", to: "home#index"

  # Tweets（1回だけ）
  resources :tweets

  # Members（ユーザーの show）
  resources :users, only: [:show], path: "members"

  # Lives
  resources :lives, only: [:index, :show, :new, :create]

  # Admin
  get "admin/menu" => "admin#menu", as: :admin_menu
end
