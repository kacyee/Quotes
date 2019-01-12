Rails.application.routes.draw do
  get 'quotes/index'

  resources :quote

  resources :quote do
      resources :comments
  end
  root 'quotes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
