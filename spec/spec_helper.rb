require File.join File.dirname(__FILE__), 'dummy', 'config', 'environment.rb'

ENV["RAILS_ROOT"] ||= File.expand_path(File.dirname(__FILE__) + '/dummy')

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
 config.mock_with :rspec
 config.order = "random"
end
