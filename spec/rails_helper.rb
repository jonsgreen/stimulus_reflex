ENV['SKIP_SANITY_CHECKER'] = "true"
require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../dummy/config/environment.rb', __FILE__)
require 'rspec/rails'
require 'capybara/rails'

RSpec.configure do |config|
  config.use_transactional_fixtures = false
  config.before(:suite) do
    packs_dir = File.join(Rails.root, "public", "packs")
    FileUtils.rm_rf(packs_dir)
  end
end
