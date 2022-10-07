Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root to: 'pages#home'
  patch 'missions/:id', to: 'missions#update'
  resources :humeurs do
    resources :missions
  end
  resources :missions
end
