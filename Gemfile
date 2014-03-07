source 'https://rubygems.org'

ruby '2.1.0'
gem 'rails', '4.1.0.rc1'

# Frontend
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 1.2'
gem 'turbolinks'
gem 'bootstrap-sass'
gem 'haml-rails'

# DB
gem 'mongoid', git: 'https://github.com/mongoid/mongoid'
gem 'moped', git: 'https://github.com/mongoid/moped'

# Mongoid Full Text Search
# gem 'mongoid_search', git: 'https://github.com/mauriciozaffari/mongoid_search', branch: 'master'

# Biased production gems for Heroku deployment.
group :production do
  gem 'rails_12factor'
  gem 'unicorn'
end

group :test, :development do
  gem 'zeus'
  gem 'foreman'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :development do
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'terminal-notifier-guard' # Mac OS X 10.8 only
end

group :test do
  gem 'database_cleaner'
  gem 'mongoid-rspec'
  gem 'orderly' # appears_before matcher
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'selenium-webdriver'
  gem 'poltergeist' # PhantomJS driver for Capybara tests
end

# group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  # gem 'sdoc', require: false
# end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
