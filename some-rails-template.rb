# rails-app template goeth here

gem 'unicorn'

gem 'haml-rails'

gem_group :assets do
  gem 'twitter-bootstrap-rails'
end

generate "bootstrap:install", "static"
generate "bootstrap:layout", "application", "fluid"