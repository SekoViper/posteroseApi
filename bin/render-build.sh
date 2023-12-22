#!/usr/bin/env bash
# exit on error
# set -o errexit

# bundle install
# ./bin/rails assets:precompile
# ./bin/rails rake assets:clean


#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake db:migrate
# bundle exec rails db:seed