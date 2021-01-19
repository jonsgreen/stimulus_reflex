#Capybara.register_driver :selenium_chrome do |app|
  #Capybara::Selenium::Driver.new(app, browser: :chrome)
#end

Capybara.javascript_driver = (ENV['CHROME'] ? :selenium_chrome : :selenium_chrome_headless)
