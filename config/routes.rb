Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root to: 'pages#home'
  patch 'missions/:id', to: 'missions#update'
  resources :humeurs, only: [:show] do
    resources :missions
  end
  resources :missions

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :humeurs
    end
  end

  # namespace :api, defaults: { format: :json } do
  #   namespace :v1 do
  #     resources :missions
  #   end
  # end
end
