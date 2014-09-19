Rails.application.routes.draw do
  get 'static_pages/index'

  mount Upmin::Engine => '/admin'
  root to: 'static_pages#index'
  devise_for :users
  resources :users
end
