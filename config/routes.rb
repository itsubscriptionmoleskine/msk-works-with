Rails.application.routes.draw do

  resources :testimonial_slides
  resources :testimonials
  resources :works_withs
  resources :example_images
  resources :offerings
  resources :use_cases
  resources :distributor_links
  resources :distributors
  resources :apps
  resources :applications
  resources :developers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  get 'home' => 'home#index'
  get 'style-guide', :to => redirect('/assets/styleguide.html')
end
