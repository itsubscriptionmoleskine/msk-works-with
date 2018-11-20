source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = '#{repo_name}/#{repo_name}' unless repo_name.include?('/')
  'https://github.com/#{repo_name}.git'
end

gem 'activeadmin', '~> 1.3'
gem 'appengine', '~> 0.4.1'
gem 'autoprefixer-rails', '~> 9.3'
gem 'bourbon', '~> 5.1'
gem 'devise', '~> 4.5'
gem 'haml-rails', '~> 1.0'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails', '~> 4.3'
gem 'livingstyleguide', '~> 2.0'
gem 'mini_racer', '~> 0.2.4'
gem 'neat', '~> 3.0'
gem 'pg', '~> 0.21.0'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.3'
gem 'sass-rails', '~> 5.0'
gem 'sqlite3'
gem 'stackdriver', '~> 0.15.0'
gem 'tinymce-rails', '~> 4.8'
gem 'turbolinks', '~> 5.2'
gem 'uglifier', '~> 4.1'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara'
  gem 'chromedriver-helper', '~> 2.1'
  gem 'database_cleaner', '~> 1.7'
  gem 'erb2haml', '~> 0.1.5'  #rake haml:replace_erbs / rake haml:convert_erbs
  gem 'factory_bot_rails', '~> 4.11'
  gem 'faker', '~> 1.9'
  gem 'rails-controller-testing', '~> 1.0'
  gem 'rspec-rails'
  gem 'seed_dump', '~> 3.3' # rake db:seed:dump
  gem 'selenium-webdriver', '~> 3.141'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'table_print', '~> 1.5'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
end

group :doc do
  gem 'sdoc'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]




gem "carrierwave-google-storage", "~> 0.9.0"
