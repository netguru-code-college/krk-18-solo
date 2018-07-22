# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :posts

  namespace :admin do
    resources :categories do
      resources :types, exept: [:create]
    end
    resources :types, only: [:create]
  end

  get 'welcome/index'
  root 'welcome#index'
  post 'welcome/get_city', to: 'welcome#get_city'
  get 'welcome/show', to: 'welcome#show'

  resources :categories
end
