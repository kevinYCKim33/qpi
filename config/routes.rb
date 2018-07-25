Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  get 'css/normalize.css', to: 'css#normalize'
  get 'css/webflow.css', to: 'css#webflow'
  get 'css/qpi.css', to: 'css#qpi'
  get 'js/webflow.js', to: 'js#webflow'
  get 'images/Manzanita.jpeg', to:'images#Manzanita'
  get 'images/handshake_unsplash.jpg', to:'images#handshake_unsplash'

end
