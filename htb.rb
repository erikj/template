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

if yes? "Do you want to run `bundle install` and initialize Twitter Bootstrap?"
  run 'bundle install'

  generate "bootstrap:install", "static"
  generate "bootstrap:layout", "application", "fluid"
else

  # populate application layout w/ Haml
  file "app/views/layouts/application.html.haml", <<-EOF.gsub(/^ {4}/, '')
    !!!
    %html
      %head
        %title #{app_name.humanize}
        = stylesheet_link_tag :application, media: "all"
        = javascript_include_tag :application
        = csrf_meta_tags
      %body
        = yield
    EOF


end
