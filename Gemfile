source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.5'

# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'sqlite3'
# Use better errors for debugging
  gem 'binding_of_caller'
  gem 'better_errors'
end

group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'pry-rails'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

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

# Use Bootstrap framework for CSS
gem 'bootstrap-sass', '~> 3.1.1'

# Use faker to create fake test data
gem 'faker'

# Use Device user authentication gem
gem 'devise'

# Use Figaro to store sensitive data via environment variables
gem 'figaro'

# Use Pundit to manage user roles
gem 'pundit'

# Use Redcarpet for Markdown
gem 'redcarpet'

# Use image uploading and editing gems
gem 'carrierwave'
gem 'mini_magick'

# Use Fog to access AWS S3
gem 'fog'

# Use Will_paginate to paginate
gem 'will_paginate'


group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
