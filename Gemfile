source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.0.2'

gem 'active_model_serializers'
gem 'coffee-rails'
gem 'devise'
gem 'email_validator'
gem 'figaro'
gem 'haml'
gem 'haml_coffee_assets'
gem 'jquery-rails'
gem 'pg'
gem 'sass-rails'
gem 'simple_form'
gem 'stripe'
gem 'uglifier'
gem 'zurb-foundation'

group :development do
  gem 'better_errors'
  gem 'guard'
  gem 'guard-rspec'
end

group :development, :test do
  gem 'capybara'
  gem 'debugger'
  gem 'factory_girl_rails'
  gem 'parallel_tests'
  gem 'rspec'
  gem 'rspec-core'
  gem 'rspec-expectations'
  gem 'rspec-mocks'
  gem 'rspec-rails', '>= 2.14'
  gem 'shoulda-matchers'
  gem 'zeus', '>= 0.13.4.pre2'
end

group :test do
  gem 'capybara-webkit', '>= 1.0.0'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'simplecov', require: false
end

group :staging, :production do
  gem 'newrelic_rpm', '>= 3.6.7'
  gem 'rails_12factor'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
