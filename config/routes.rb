Rails.application.routes.draw do
  resources :users
  get 'dashboard/index'

  resources :articles do
    resources :comments
  end

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
