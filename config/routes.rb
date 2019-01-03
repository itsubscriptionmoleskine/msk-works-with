Rails.application.routes.draw do

  resources :testimonial_slides
  resources :testimonials
  resources :works_withs
  resources :example_images
  resources :products
  resources :use_cases
  resources :distributor_links
  resources :distributors
  resources :apps
  resources :developers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  get 'home' => 'home#index'
  get 'tos' => 'terms_of_service#index'
  get 'privacy' => 'privacy_policy#index'
  get 'style-guide', :to => redirect('/assets/styleguide.html')
end
