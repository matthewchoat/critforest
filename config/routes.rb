Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'landing_pages#index'
   resources :guides, only: [:index, :show]
   namespace :creator do
    resources :guides, only: [:new, :create, :show] do
      resources :sections, only: [:new, :create]
      end
  end
end
