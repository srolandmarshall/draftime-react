# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :drafts
    end
  end
  namespace :api do
    namespace :v1 do
      get 'players/index'
      get 'players/new'
      get 'players/create'
      get 'players/destroy'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end
