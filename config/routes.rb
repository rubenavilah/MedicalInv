Rails.application.routes.draw do
  root to: 'static_pages#welcome'
  devise_for :users, controllers: {
          sessions: 'users/sessions',
          registrations: 'users/registrations',
          passwords: 'users/passwords'
  }
  resources :labs
  resources :products
  resources :products_user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
