source "https://rubygems.org"

git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "2.5.1"

gem "rubocop", "~> 0.54.0", require: false
gem "bootstrap-sass", "3.3.7"
gem "rails", "~> 5.2.1"
gem "puma", "~> 3.11"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "config"
gem "bcrypt", "3.1.12"
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "bootsnap", ">= 1.1.0", require: false
gem "jquery-rails"
gem "faker"
gem "will_paginate"
gem "bootstrap-will_paginate"

group :development, :test do
  gem "byebug", platforms: %i(mri mingw x64_mingw)
  gem "sqlite3"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "chromedriver-helper"
  gem "guard"
  gem "guard-minitest"
  gem "minitest"
  gem "minitest-reporters"
  gem "rails-controller-testing"
  gem "selenium-webdriver"
end

group :production do
  gem "pg", "0.18.4"
end

gem "tzinfo-data", platforms: %i(mingw mswin x64_mingw jruby)
