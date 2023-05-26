require 'sidekiq/web'

Rails.application.routes.draw do
  resources :bills
  resources :blazer_and_jackets
  resources :dresses
  resources :t_shirts
  resources :skirts
  resources :pants
  resources :infor_customers
  resources :employees
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'bills#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
