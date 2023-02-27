Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :hotels, only: [:index, :show]
      resources :sessions, only:[:create, :destroy]
      resources :users, only:[:create]
      resources :bookings, only:[:create, :index, :show]
    end
  end
  

end
