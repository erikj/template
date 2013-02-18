# Templates

## About

**Templates** is a set of **Ruby-on-Rails** application templates, for creating **Ruby-on-Rail** applications configured w/:

- markup language:
  - [**Haml**](http://haml.info/)
  - [**Slim**](http://slim-lang.com/)
- [**Twitter Bootstrap for Rails 3.1 Asset Pipeline**](https://github.com/seyhunak/twitter-bootstrap-rails)
- [**Unicorn**](http://unicorn.bogomips.org/) Rack HTTP server

## Usage

Create a new **Ruby-on-Rails** application composed w/ available template:

### Haml Twitter Bootstrap

    % rails new APPNAME -m http://erikj.github.com/templates/htb.rb

### Slim Twitter Bootstrap

    % rails new APPNAME -m http://erikj.github.com/templates/stb.rb

### Development

The provided application templates are generated from a template via a [**Thor**](https://github.com/wycats/thor/wiki) task, `template:create`.

To modify the provided application templates:

- Edit template template as needed:
  - `% emacs templates/template_template.erb`
- Generate new template:
  - Slim:
    - `% thor template:create --force stb`
  - Haml:
    - `% thor template:create --force htb`

## Requirements

### Usage

Using the provided templates requires:

- [**Ruby**](http://ruby-lang.org)
- [**RubyGems**](http://rubygems.org)
- [**Rails**](http://rubyonrails.org)

### Development

Development of **templates** requires the dependencies listed above, and:

- [**Thor**](https://github.com/wycats/thor)

## Background

- [Rails Application Templates](http://guides.rubyonrails.org/rails_application_templates.html)
- [**Primo:** A configurable default Rails stack](https://github.com/cbetta/primo)
- [**Twitter Bootstrap**](http://twitter.github.com/bootstrap/)  CSS / JS framework

## License

**MIT [LICENSE](https://github.com/erikj/templates/blob/gh-pages/LICENSE)**