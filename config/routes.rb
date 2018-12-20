Rails.application.routes.draw do
  root to: 'people#index'

  devise_for :users
  resources :people
end
