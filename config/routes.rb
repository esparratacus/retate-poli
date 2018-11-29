Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  resources :challenges do
    resources :challenge_instances
  end
  resources :challenge_instances
  namespace :user do
    resources :challenge_instances
  end
end
