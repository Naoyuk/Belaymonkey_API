# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.4'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'devise'
gem 'net-smtp'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rack-cors'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'rubocop', require: false
gem 'rubocop-rails'
gem 'webpacker'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end

group :development do
  gem 'bullet'
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'spring-commands-rspec'
end
