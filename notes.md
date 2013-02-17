# Notes

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
- output information on app creation:
  - links to:
    - haml.info
    - twitter bootstrap / -rails & railscast
- git:
  - `.gitignore`
    - <https://github.com/github/gitignore/blob/master/Rails.gitignore>
  - `.gitignore`s in proper directories:
    - `log/`
  - `git init .`
  - `git add .`
  - `git commit -m 'initializing new Rails application'`


## TBD

- X name?
  - `haml-tbs-unicorn`?
- X gist or git repo?
- is there a way to pass options to the `rails new` command?
  - want to emulate my `~/.railsrc`:

    ```
    # rails 3.2+ only
    --skip-javascript
    --skip-bundle
    --skip-test-unit
    --skip-git # no .gitkeeps!!!
    ```