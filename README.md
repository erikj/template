# Rails app template:

## Usage

    % rails new APPNAME -m https://raw.github.com/erikj/haml-bootstrap-template/master/haml-bootstrap.rb

## Background

- prior art / leverage (?) <https://github.com/cbetta/primo>
- <http://guides.rubyonrails.org/rails_application_templates.html>

## Wishlist

- X Haml
  - X proper treatment, a la **primo**:
- X Twitter bootstrap
  - X run initial bootstrap commands
- X Unicorn
- foreman + Procfile / Heroku ready (?)
- (?) `.rvmrc`: `1.9.3-p358@APPNAME`
  - template options?
    - <http://blog.madebydna.com/all/code/2010/10/11/cooking-up-a-custom-rails3-template.html>

## TBD

- name?
  - `haml-tbs-unicorn`?
- gist or git repo?
- is there a way to pass options to the `rails new` command?
  - want to emulate my `~/.railsrc`:

    ```
    # rails 3.2+ only
    --skip-javascript
    --skip-bundle
    --skip-test-unit
    --skip-git # no .gitkeeps!!!
    ```