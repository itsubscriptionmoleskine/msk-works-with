Rails.application.routes.draw do

  resources :videos
  resources :testimonial_slides
  resources :testimonials, param: :slug
  resources :works_withs, param: :slug
  resources :example_images
  resources :products
  resources :use_cases, param: :slug
  resources :app_store_links
  resources :app_stores
  resources :apps, param: :slug
  resources :developers, param: :slug
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  get 'home' => 'home#index'
  get 'intro' => 'introductions#index'
  get 'style-guide', :to => redirect('/assets/styleguide.html')
end
