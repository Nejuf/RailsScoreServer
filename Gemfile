source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use postgresql as the database for Active Record
gem 'pg'

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
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

gem 'figaro'
gem 'haml-rails'
gem 'jquery-turbolinks'
gem 'js-routes'


#Heroku https://devcenter.heroku.com/articles/rails4
#Heroku http://stackoverflow.com/questions/15354539/heroku-does-not-compile-files-under-assets-piplines-in-rails-4
group :production do
  gem 'rails_12factor'
end

group :development, :test do
	gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'jshint_on_rails'
  gem 'letter_opener'
  gem 'meta_request'
  gem 'rails-erd'
  gem 'rails-footnotes'
  gem 'rspec-rails'
end

group :development do

end

group :test do
	gem 'capybara'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'guard-rspec'
  gem 'launchy'
  gem 'shoulda-matchers'
end

ruby '1.9.3'