# Rails-Application Template composed of:
# - Slim
# - Twitter-Bootrap-Rails
# - Unicorn

gem 'unicorn'

gem "slim"
gem_group :development do
  gem "slim-rails"
end

remove_file "app/views/layouts/application.html.erb"

gem_group :assets do
  gem 'twitter-bootstrap-rails'
end

run 'bundle install'

generate "bootstrap:install", "static"
generate "bootstrap:layout", "application", "fluid"