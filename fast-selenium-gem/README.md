# browserstack-fast-selenium

fast-selenium gem to speed up your selenium tests on BrowserStack.

## How it works

This works by enabling [HTTP persistent connection ](https://en.wikipedia.org/wiki/HTTP_persistent_connection) in selenium bindings by overriding its default HTTP client

## Install

    gem install browserstack-fast-selenium

## Usage

All you have to do is to include it in your code. 

    require 'browserstack-fast-selenium'

## Example

```
require 'selenium-webdriver'
require 'browserstack-fast-selenium'

# Input capabilities
caps = Selenium::WebDriver::Remote::Capabilities.new
caps['browser'] = 'Chrome'
driver = Selenium::WebDriver.for(:remote,
  :url => "http://#{ENV["BROWSERSTACK_USERNAME"]}:#{ENV["BROWSERSTACK_ACCESSKEY"]}@hub-cloud.browserstack.com/wd/hub",
  :desired_capabilities => caps)
driver.navigate.to "http://www.google.com"
element = driver.find_element(:name, 'q')
element.send_keys "BrowserStack"
element.submit
puts driver.title
driver.quit
```

