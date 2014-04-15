source 'http://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use sqlite3 as the database for Active Record
#gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end


# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
gem 'capistrano', group: :development
#
# Use debugger
# gem 'debugger', group: [:development, :test]


# custom gems


group :development do
  gem 'capistrano-unicorn', :require => false
  gem "letter_opener" # open sent mails in the browser
  gem "faker" # generate fake data on demand

end


gem 'pg' # postgres db
gem 'devise' # account mgmt rails engine

# ui css icons & helpers
gem "font-awesome-rails"
gem 'simple_form'
gem 'country_select'
gem 'compass-rails'

gem 'rack-cors', :require => 'rack/cors' # support cors for ajax requests from popups

# these are used for file uploads
gem 'carrierwave'
gem "fog", "~> 1.3.1"
gem 'mini_magick'
gem "jquery-fileupload-rails"

# pagination
gem "kaminari"
gem 'kaminari-bootstrap', '~> 3.0.1'

#background processing & monitor
gem 'sidekiq'
gem 'sinatra', require: false
gem 'slim'

# browser detect & logging
gem 'browser'

gem 'jquery-turbolinks' # workaround jquery ready issues caused by turbo links

# testing
gem "rspec-rails", :group => [:development, :test]


# custom page caching
gem 'actionpack-page_caching'

# redirect naked domain to www
gem 'refraction'

#integrations
gem 'omniauth'
gem 'omniauth-createsend' #campaign monitor
gem 'createsend'

group :test do
  gem 'sqlite3'
  gem "factory_girl_rails"
  gem "capybara"
  gem "capybara-webkit"
  gem "guard-rspec"
  gem "guard-zeus"
  gem "selenium-webdriver"
  gem "database_cleaner"


end


ruby "2.0.0"