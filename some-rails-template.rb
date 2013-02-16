# rails-app template goeth here

gem 'unicorn'

gem 'haml-rails'

gem_group :assets do
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby
  gem 'less-rails'
  gem 'twitter-bootstrap-rails'
end
