# Template

## About

**[Template](https://github.com/erikj/template)** is a **Ruby-on-Rails** application template, for creating **Ruby-on-Rails** applications configured w/:

- application server:
  - [**Thin**](http://code.macournoyer.com/thin/): *Ruby web server that glues together three of the best Ruby libraries in web history: Mongrel parser, EventMachine and Rack*
  - [**Puma**](http://puma.io/):  *modern, concurrent web server for Ruby*
  - [**Unicorn**](http://unicorn.bogomips.org/): *Rack HTTP server for fast clients and Unix*

- templating system:
  - [**Haml**](http://haml.info/)
  - [**Slim**](http://slim-lang.com/)

- Bootstrap
  - via [**Twitter Bootstrap for Rails 3.1 Asset Pipeline**](https://github.com/seyhunak/twitter-bootstrap-rails)

## Usage

Create a new **Ruby-on-Rails** application composed w/ Template:

    % rails new APPNAME -m http://erikj.github.io/template/template.rb

You will then be asked queried for your choices of:

- application server:
  - **WEBrick** (default)
  - **puma**
  - **thin**
  - **unicorn**

- template engine
  - **ERB** (default)
  - **Slim**
  - **Haml**

- using the **Bootstrap** CSS/JS framework

- running `bundle install` to install gems

## Requirements

Using the provided template requires:

- [**Ruby**](http://ruby-lang.org)
- [**RubyGems**](http://rubygems.org)
- [**Rails**](http://rubyonrails.org)

## Background

- [**Rails Application Templates**](http://guides.rubyonrails.org/rails_application_templates.html)
- [**Primo:** A configurable default Rails stack](https://github.com/cbetta/primo)
- [**Twitter Bootstrap**](http://twitter.github.com/bootstrap/)  CSS / JS framework

## License

**MIT [LICENSE](https://github.com/erikj/template/blob/gh-pages/LICENSE)**