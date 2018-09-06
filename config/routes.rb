Rails.application.routes.draw do
  mount Thredded::Engine => '/discussions'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :workshops, only: [:index]

  get 'explore-communities', to: 'communities#index', as: 'communities'
  get 'my-communities', to: 'communities#my_communities', as: 'my_communities'
  resources :communities, except: :index
  resources :community_users, only: [:create, :destroy]

  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'sign-up'}, controllers: { sessions: "users/sessions", registrations: "users/registrations", passwords: "users/passwords" }
  devise_scope :user do
    get 'password_reset', to: 'users/passwords#new', as: 'password_reset'
  end

  root 'landing#home'

  get '/about', to: 'landing#about', as: 'about'
  get '/contact', to: 'landing#contact', as: 'contact'
  # get '/trial', to:


  get 'images/KidandCar.png', to: 'images#KidandCar'
  # get 'images/Manzanita.jpeg', to:'images#Manzanita'
  # get 'images/handshake_unsplash.jpg', to:'images#handshake_unsplash'
  resources :users
end
