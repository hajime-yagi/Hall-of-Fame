# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'top#index'
  get '/login' => 'user_sessions#new'
  post '/login' => 'user_sessions#create'
  delete '/logout' => 'user_sessions#destroy'
  get '/rank' => 'ranks#index'
  get '/fan_rank' => 'fan_ranks#index'
  get '/team_rank' => 'team_ranks#index'
  resources :users
  resource :profile, only: %i[show edit update]
  resources :games do
    resources :expects, only: %i[new create show edit update]
  end
  resources :expects, only: %i[ index ]
end
