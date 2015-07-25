README
==========

# ruby version

* ruby-2.2.2

# Installation

go to main application directory:

`cd [MAIN_APP_ROOT]`

git clone:

`git clone https://github.com/norancer/blorgh_engine.git vendor/engines/blorgh`

Gemfile.local:

`vi Gemfile.local`

    gem 'blorgh', path: "vendor/engines/blorgh"

routes:

`vi config/routes/blorgh.rb`

    Rails.application.routes.draw do
      mount Blorgh::Engine, at: "/blog", as: 'blorgh'
    end


Model of association:

`vi config/initializers/blorgh_engine.rb`

    Blorgh.author_class = "User"

app_config:

`vi config/app_config.yml`

    modules:
     - Blorgh

bundle:

`export BUNDLE_GEMFILE=Gemfile.local`

`bundle install --path vendor/bundle`

install migratins:

`bundle exec rake railties:install:migrations`

migration:

`bundle exec rake db:migrate`

start:

`bundle exec rails s -b 0.0.0.0`

