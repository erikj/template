# Rails-Application Template composed of:
# - haml
# - unicorn

gem 'unicorn'

gem "haml"
gem_group :development do
  gem "haml-rails"
end

remove_file "app/views/layouts/application.html.erb"

if yes? "Do you want to run `bundle install`?"
  run 'bundle install'
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
