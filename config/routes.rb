Rails.application.routes.draw do

  resources :developers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  get 'home' => 'home#index'
  get 'style-guide', :to => redirect('/assets/styleguide.html')
end
