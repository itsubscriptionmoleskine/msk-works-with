# Copyright 2017 Google, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.2'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  gem "rspec-rails"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

#
#
# source 'https://rubygems.org'
#
# git_source(:github) do |repo_name|
#   repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
#   "https://github.com/#{repo_name}.git"
# end
#
# gem 'activeadmin', '~> 1.3'
# gem 'appengine', '~> 0.4.1'
# gem 'autoprefixer-rails', '~> 9.3'
# gem 'bourbon', '~> 5.1'
# gem 'breadcrumbs_on_rails', '~> 3.0'
# gem 'carrierwave-google-storage', '~> 0.9.0'
# gem 'devise', '~> 4.5'
# gem 'haml-rails', '~> 1.0'
# gem 'jbuilder', '~> 2.5'
# gem 'jquery-rails', '~> 4.3'
# gem 'livingstyleguide', '~> 2.0'
# gem 'mini_racer', '~> 0.2.4'
# gem 'neat', '~> 3.0'
# gem 'pg', '~> 0.21.0'
# gem 'puma', '~> 3.7'
# gem 'rails', '~> 5.2.1.1'
# gem 'sass-rails', '~> 5.0'
# gem 'sqlite3'
# gem 'stackdriver', '~> 0.15.0'
# gem 'tinymce-rails', '~> 4.8'
# gem 'turbolinks', '~> 5.2'
# gem 'uglifier', '~> 4.1'
#
# group :development, :test do
#   gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
#   gem 'capybara'
#   gem 'chromedriver-helper', '~> 2.1'
#   gem 'database_cleaner', '~> 1.7'
#   gem 'erb2haml', '~> 0.1.5'  #rake haml:replace_erbs / rake haml:convert_erbs
#   gem 'factory_bot_rails', '~> 4.11'
#   gem 'faker', '~> 1.9'
#   gem 'rails-controller-testing', '~> 1.0'
#   gem 'rspec-rails'
#   gem 'seed_dump', '~> 3.3' # rake db:seed:dump
#   gem 'selenium-webdriver', '~> 3.141'
#   gem 'shoulda-matchers', '~> 3.1'
#   gem 'table_print', '~> 1.5'
# end
#
# group :development do
#   gem 'listen', '>= 3.0.5', '< 3.2'
#   gem 'web-console', '>= 3.3.0'
# end
#
# group :doc do
#   gem 'sdoc'
# end
#
# # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
#






