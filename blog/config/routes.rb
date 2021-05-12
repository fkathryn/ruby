Rails.application.routes.draw do

  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'
  get 'contacts' => 'pages#contacts', as: 'contacts'

  resources :posts

  # devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  # devise_scope :user do
  #   delete 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
  # end
end

