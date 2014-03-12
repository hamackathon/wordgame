source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
group :development, :test do
  gem 'sqlite3'
  #gem 'sqlite3-ruby', :require => 'sqlite3' ※ これはインストールしている場合に必要
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby



# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem "devise"
gem "haml", ">= 3.0.0"
gem "haml-rails"
gem "jquery-rails"
gem "rspec-rails", ">= 2.0.1", group: [:development, :test]

group :development do 
  gem 'better_errors' # Better Errors本体
  gem 'binding_of_caller' # Better Errors上でREPLを使用するためのgem
end

gem "jquery-ui-rails"
gem "pusher"
gem "nokogiri"

