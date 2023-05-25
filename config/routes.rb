require 'sidekiq/web'

Rails.application.routes.draw do
  resources :dresses
  resources :t_shirts
  resources :skirts
  resources :blazerand_jackets
  resources :pants
  resources :infor_customers
  resources :employees
  resources :bill_details
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
