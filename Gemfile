source 'https://rubygems.org'

# ruby '2.2.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.7.1'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
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
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails', '~> 4.5.0'
  gem 'shoulda-matchers', '~> 2.8.0'
  gem 'shoulda-callback-matchers'
  gem 'dotenv-rails', '~> 2.1', '>= 2.1.1'
end

group :test do
  gem 'database_cleaner', '~> 1.5.0'
  gem 'capybara', '~> 2.5.0'
  gem 'launchy', '~> 2.4.3'
  # gem 'poltergeist', '~> 1.6.0'
  gem 'selenium-webdriver'
end

group :development do
  gem 'quiet_assets', '~> 1.1.0'
  gem 'guard-rspec', '~> 4.6.4', require: false
  gem 'optimadmin_generators', git: 'git@github.com:eskimosoup/optimadmin_generators.git'
  gem 'rack-mini-profiler', '~> 0.9.7'
  gem 'flamegraph', '~> 0.1.0'
  gem 'stackprof', '~> 0.2.7'
  gem 'bullet', '~> 4.14.7'
end

source 'https://rails-assets.org' do
  gem 'rails-assets-slick.js'
  gem 'rails-assets-colorbox'
end

gem 'optimadmin', git: 'git@github.com:eskimosoup/Optimadmin.git', branch: 'master'
gem 'workable', '~> 2.0'
gem 'friendly_id', '~> 5.1'
gem 'cocoon', '~> 1.2', '>= 1.2.6'
gem 'wkhtmltopdf-binary'
gem 'wicked_pdf', '~> 0.11.0'
gem 'whenever', '~> 0.9.4', require: false
