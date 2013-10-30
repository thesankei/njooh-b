source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'#, '0.15.0'
gem 'simple_form'
gem 'devise', '>= 2.2.3'
gem 'figaro', '>= 0.5.3'
gem 'compass'
gem 'cancan'
gem 'faker', '1.0.1'
gem 'will_paginate','3.0.4' #recomm on tut '3.0.3'
gem 'bootstrap-will_paginate','0.0.9' #recomm on tut '0.0.6'
gem 'rolify'
gem 'acts-as-taggable-on'
gem "twitter-bootstrap-rails", "~> 2.0.1.0"
gem 'bootstrap-sass', '~> 2.3.0.1'
gem "paperclip" #, "~> 3.0"
gem 'aws-sdk'
#gem 'rmagick'

# To use Memcached.
#gem 'dalli'

#A documentation tool for generating ERDs from models.
gem 'rails-erd'

# To use PostgreSQL hstore in Rails 3.x
gem 'activerecord-postgres-hstore'

#Optimize the site for mobile devices.
gem 'ress'

gem 'omniauth'
gem 'omniauth-facebook'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  # Add Foundation Here
  gem 'zurb-foundation', '~> 4.0.0'
end

gem 'jquery-rails', '3.0.1'
#gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :development, :test do
  gem 'rspec-rails', '>= 2.12.2'
  gem 'factory_girl_rails', '>= 4.2.0'
  gem 'guard-zeus'
end 

group :development do
  gem 'quiet_assets', '>= 1.0.1'
  gem 'better_errors', '>= 0.3.2'
  gem 'binding_of_caller', '>= 0.6.8'
end

group :test do
  gem 'database_cleaner', '>= 0.9.1'
  gem 'email_spec', '>= 1.4.0'
  gem 'launchy', '>= 2.1.2' 
  gem 'capybara', '>= 2.0.2'
  gem 'guard-rspec'
  gem 'guard'
  gem 'rb-inotify', '~> 0.9'
  gem 'rb-fsevent', :require => false
  gem 'rb-fchange', :require => false
end

group :production do
  gem 'pg'#, '0.15.0'
end
