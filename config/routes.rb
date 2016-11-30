Rails.application.routes.draw do
  # Change for Users/sign In
  root to: 'labs#new'
  resources :labs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
