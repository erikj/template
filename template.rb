# TODO:
# - consolidate other templates herein via responses to questions

#   - 'would you like to specify an application server, ie. unicorn, thin or puma?'
#     - if yes
#       - ask('unicorn, thin or puma?')

def remove_erb_layout()
  remove_file 'app/views/layouts/application.html.erb'
end

def generate_layout(templating_system)
  case templating_system
  when 'slim'

    file 'app/views/layouts/application.html.slim', <<-EOF.gsub(/^ {6}/, '')
	  doctype
	  html
	    head
	      title #{app_name.humanize}
          = stylesheet_link_tag    'application', :media => 'all'
          = javascript_include_tag 'application'
          = csrf_meta_tags
  	  body
  	    = yield
    EOF

  when 'haml'
  # populate application layout w/ Haml
    file 'app/views/layouts/application.html.haml', <<-EOF.gsub(/^ {6}/, '')
      !!!
      %html
        %head
          %title #{app_name.humanize}
          = stylesheet_link_tag :application, media: 'all'
          = javascript_include_tag :application
          = csrf_meta_tags
        %body
          = yield
      EOF
  end
end


if yes?('would you like to specify an application server, ie. unicorn, thin or puma?')

  application_server = ask('unicorn, thin or puma?')
  gem application_server

end

#   - markup other than ERB?
#     - if yes?

if yes?('would you like to use a templating system other than ERB, ie. slim or haml?')

  #       - slim or haml?
  templating_system = ask('slim or haml?')

  if templating_system == 'slim'
  	#         - if slim
  	#           - gem 'slim/-rails'
  	#           - remove_erb_layout()
  	#           - generate_layout('slim')
  	gem 'slim'
  	gem_group :development do
  	  gem 'slim-rails'
  	end
  	remove_erb_layout()
  	generate_layout('slim')

  elsif templating_system == 'haml'
  	#         - elsif haml
  	#           - gem 'haml/-rails'
  	#           - remove_erb_layout()
  	#           - generate_layout('haml')
    gem 'haml'
    gem_group :development do
      gem 'haml-rails'
    end
    generate_layout('haml')
  end
end


#   - bootstrap?
#     - if yes
#       - gem 'twitter-bootstrap-rails'
#       - initialize twitter bootstrap? ('bundle install' will be run)
#         - if yes
#           - generate 'bootstrap:install', 'static'
#           - generate 'bootstrap:layout', 'application', 'fluid'
#   - run bundle install?
#     - if yes
#       - run 'bundle install'
