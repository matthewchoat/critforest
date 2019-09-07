Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'landing_pages#index'
   namespace :creator do
    resources :guides, only: [:new, :create, :show]
  end
end
