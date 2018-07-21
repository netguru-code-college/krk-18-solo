Rails.application.routes.draw do
  devise_for :users
  resources :posts
  
  namespace :admin do
    resources :categories
  end
end
