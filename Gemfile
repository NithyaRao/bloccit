source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use sqlite3 as the database for Active Record
group :production do
   gem 'pg'
   gem 'rails_12factor'
 end
 
 group :development do
   gem 'sqlite3'
 end
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# USe Faker to generate development data
gem 'faker'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  
  # testing framework for Rails
  gem 'rspec-rails', '~> 3.0'

  #acceptance test framework for web applications
  gem 'capybara'
  
end
#  a Sass-powered version of Bootstrap, ready to drop right into your Sass powered applications.
gem 'bootstrap-sass'
#  Pry is a powerful alternative to the standard IRB shell for Ruby.
gem 'pry-rails'
# Devise is a flexible authentication solution for Rails based on Warden
gem 'devise'
# Figaro makes it easy to securely configure Rails applications.It parses a Git-ignored YAML file in your application and loads its values into ENV.
gem 'figaro', '1.0'
# a gem that makes it easier to authorize different users for different tasks in your app
gem 'pundit'
# a gem library that GitHub uses for Markdown:
gem 'redcarpet'
# gems to upload images and manipulate images
gem 'carrierwave'
gem 'mini_magick'
# gem Fog is known as a "cloud services library", and essentially makes uploading to S3 easier
gem 'fog'
# gem for Pagination
gem 'will_paginate', '~> 3.0.6'

group :development do
  gem 'binding_of_caller'
  gem 'better_errors'
end  

group :test do
  gem 'factory_girl_rails', '~> 4.0'
end

