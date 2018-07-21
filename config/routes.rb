Rails.application.routes.draw do
  resources :posts
  
  namespace :admin do
    resources :categories
  end
end
