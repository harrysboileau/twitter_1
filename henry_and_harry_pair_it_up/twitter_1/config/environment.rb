# Set up gems listed in the Gemfile.
# See: http://gembundler.com/bundler_setup.html
#      http://stackoverflow.com/questions/7243486/why-do-you-need-require-bundler-setup
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

# Require gems we care about
require 'rubygems'

require 'uri'
require 'pathname'

require 'pg'
require 'active_record'
require 'logger'

require 'sinatra'
require "sinatra/reloader" if development?

require 'erb'

require 'twitter'

# Some helper constants for path-centric logic
APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))

APP_NAME = APP_ROOT.basename.to_s

# Set up the controllers and helpers
Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('app', 'helpers', '*.rb')].each { |file| require file }

# Set up the database and models
require APP_ROOT.join('config', 'database')


Twitter.configure do |config|
  config.consumer_key        = "vK33mQQsOLAfx1rL2Avofg"
  config.consumer_secret     = "GD1L592EUjA4qbXme9LbHYl7yDuPA3iYjfBMS3bdFaA"
  config.oauth_token        = "16355243-8XFNOJgDNbgDWMLa7MbUEhLPkz9qLQBcgq29hwsO4"
  config.oauth_token_secret = "Gm3f1jdaUm1Ht7ZUCVkV6u86XTDq8BuBjPub9uX3sHc"
end



# OAuth settings

# Your application's OAuth settings. Keep the "Consumer secret" a secret. This key should never be human-readable in your application.

# Access level   Read-only 
# About the application permission model
# Consumer key  vK33mQQsOLAfx1rL2Avofg
# Consumer secret GD1L592EUjA4qbXme9LbHYl7yDuPA3iYjfBMS3bdFaA
# Request token URL https://api.twitter.com/oauth/request_token
# Authorize URL https://api.twitter.com/oauth/authorize
# Access token URL  https://api.twitter.com/oauth/access_token
# Callback URL  None
# Sign in with Twitter  No





# Access token  16355243-5lv4Ty8JxHUFZzA6qkQchDN1Fi3VLTBfYs83MEgHo
# Access token secret Oo5g2kFoO2HA4CtEnSRrAOE2TIANo9ifnRVKtQ173I
# Access level  Read-only
