require 'browserstack-fast-selenium'

# Input capabilities
caps = Selenium::WebDriver::Remote::Capabilities.new
caps['browser'] = 'Chrome'
caps['build'] = 'fast selenium gem'
caps['name'] = "fast selenium version #{Gem.loaded_specs["selenium-webdriver"].version.to_s}"
puts "Testing fast selenium script on version: #{Gem.loaded_specs["selenium-webdriver"].version.to_s}"
driver = Selenium::WebDriver.for(:remote,
  :url => "http://#{ENV["BROWSERSTACK_USERNAME"]}:#{ENV["BROWSERSTACK_ACCESSKEY"]}@hub-cloud.browserstack.com/wd/hub",
  :desired_capabilities => caps)
driver.navigate.to "http://www.google.com"
element = driver.find_element(:name, 'q')
element.send_keys "BrowserStack"
element.submit
puts driver.title
driver.quit
