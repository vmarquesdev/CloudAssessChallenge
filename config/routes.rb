Rails.application.routes.draw do
  root to: 'people#index'

  devise_for :users
  resources :posts
  resources :people
  resources :organisations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
