Rails.application.routes.draw do
  namespace :api, path: "api", defaults: {format: :json}, constraints: {format: :json} do

    resources :temporary_people, only: [ :index, :show, :update ]

  end
end
