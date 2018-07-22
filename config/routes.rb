Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'css/normalize.css', to: 'css#normalize'
  get 'css/webflow.css', to: 'css#webflow'
  get 'css/qpi.css', to: 'css#qpi'

end
