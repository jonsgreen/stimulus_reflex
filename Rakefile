# frozen_string_literal: true

require "bundler/gem_tasks"
require "rails/test_unit/runner"
require 'rspec/core'
require 'rspec/core/rake_task'

task :test_javascript do |task|
  system "yarn run test"
end

task :test_ruby do |task|
  Rails::TestUnit::Runner.run
end

task :spec do |task|
  RSpec::Core::RakeTask.new(:spec)
end

task test: [:spec, :test_javascript, :test_ruby]
task default: [:test]
