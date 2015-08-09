README
==========

# ruby version

* ruby-2.2.2

# Install to the main application

go to main application directory:

`cd [MAIN_APP_ROOT]`

git clone:

`git clone https://github.com/norancer/blorgh_engine.git vendor/engines/blorgh`

Gemfile.local:

`vi Gemfile.plugin`

    gem 'blorgh', path: "vendor/engines/blorgh"

seeds:

`vi db/seeds/blorgh.rb`

    Blorgh::Engine.load_seed

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

`bundle install --path vendor/bundle`

install migratins:

`bundle exec rake railties:install:migrations`

migration:

`bundle exec rake db:migrate`

start:

`bundle exec rails s -b 0.0.0.0`


# Run a dummy application:

git clone:

`git clone https://github.com/norancer/blorgh_engine.git`

change directory:

`cd blorgh_engine/spec/dummy/`

bundle:

`bundle install --path vendor/bundle`

migration:

`bundle exec rake db:migrate`

start a dummy application:

`bundle exec rails s -b 0.0.0.0

please access to http://0.0.0.0:3000/blog/ .

# Development tips

Rspec, please run on dummy app directory .
And the others , please run a plug-in root directory .

rspec unit test:

    cd spec/dummy/
    bundle exec rspec -fd

rspec coverage:

    cd spec/dummy/
    COVERAGE=on bundle exec rspec -fd

rspec integration test:

    cd spec/dummy/
    bundle exec rspec spec/acceptance -r turnip/rspec -fd

ruby code analyzer:

    bundle exec rubocop -c .rubocop.yml --rails -D

automates:

    # unit test
    cd spec/dummy/
    bundle exec guard -p

scss code analyzer:

    bundle exec scss-lint

coffee script analyzer:

    yum install epel-release
    yum install nodejs npm --enablerepo=epel
    yum install gcc gcc-c++
    npm install -g coffeelint

    bundle exec coffeelint -r ./app/assets/javascripts

rails best practices:

    bundle exec rails_best_practices

rails security scanner:

    bundle exec brakeman

N+1 query scanner:

    Please run in a browser.  
    If applicable query is found, the alert display is output.

documentation:

    bundle exec yard

erd:

    yum -y install graphviz

    bundle exec erd

erb to slim:

    bundle exec erb2slim app/views app/views -d
