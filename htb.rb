# Rails-Application Template composed of:
# - haml
# - twitter-bootrap-rails
# - unicorn

gem 'unicorn'

gem "haml"
gem_group :development do
  gem "haml-rails"
end

remove_file "app/views/layouts/application.html.erb"

gem_group :assets do
  gem 'twitter-bootstrap-rails'
end

run 'bundle install'

generate "bootstrap:install", "static"
generate "bootstrap:layout", "application", "fluid"