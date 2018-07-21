Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :posts
  
  namespace :admin do
    resources :categories
  end

  get 'welcome/index'
  root 'welcome#index'

  resources :categories
end
