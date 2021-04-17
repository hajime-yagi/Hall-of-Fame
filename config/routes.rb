# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'static_pages#top'
  get '/login' => 'user_sessions#new'
  post '/login' => 'user_sessions#create'
  delete '/logout' => 'user_sessions#destroy'
  resources :users
  resource :profile, only: %i[show edit update]
  resources :games do 
    resources :expects
  end
end
