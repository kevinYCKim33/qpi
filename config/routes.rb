Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}, controllers: { sessions: "users/sessions", registrations: "users/registrations" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing#home'
  get '/beta_home', to: 'landing#beta_home', as: 'beta_home'
  get '/about', to: 'landing#about', as: 'about'
  get '/contact', to: 'landing#contact', as: 'contact'

  get '/home', to: 'users#home', as: 'personal_home'

  get 'images/KidandCar.png', to: 'images#KidandCar'
  # get 'images/Manzanita.jpeg', to:'images#Manzanita'
  # get 'images/handshake_unsplash.jpg', to:'images#handshake_unsplash'
  resources :users
end
