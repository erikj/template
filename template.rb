# Rails Application Template
# see https://github.com/erikj/template for further information and LICENSE

# USAGE:
# % rails new APPNAME -m http://erikj.github.io/template/template.rb

APPLICATION_LAYOUT_PREFIX = 'app/views/layouts/application.html'

def bundle_install
  run 'bundle install --path=vendor'
end

def remove_erb_layout()
  remove_file "#{APPLICATION_LAYOUT_PREFIX}.erb"
end

def use_engine template_engine
  gem template_engine
  gem_group :development do
    gem "#{template_engine}-rails"
  end
  remove_erb_layout()

  case template_engine
  when 'slim'
    # populate application layout w/ Slim

    file "#{APPLICATION_LAYOUT_PREFIX}.slim", <<-EOF.gsub(/^ {6}/, '')
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
    file "#{APPLICATION_LAYOUT_PREFIX}.haml", <<-EOF.gsub(/^ {6}/, '')
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

def run_template

  # application server

  if yes?('would you like to specify an application server, ie. unicorn, thin or puma?')

    application_server = ask('unicorn, thin or puma?')
    gem application_server

  end

  # non-ERB template engine

  if yes?('would you like to use a template engine other than ERB, ie. slim or haml?')

    template_engine = ask('slim or haml?')
    use_engine template_engine

  end

  bundled = false

  # bootstrap
  if yes?('install the Bootstrap CSS/JS framework via twitter-bootstrap-rails?')
    gem 'twitter-bootstrap-rails'
    if yes?('initialize twitter bootstrap? (`bundle install` will be run)?')
      bundle_install
      bundled = true
      generate 'bootstrap:install', 'static'
      generate 'bootstrap:layout', 'application', 'fluid'
    end
  end

  # bundle
  unless bundled
    if yes?('run `bundle install` to install gems?')
      bundle_install
    end
  end
end

run_template()
