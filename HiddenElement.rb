require "selenium-webdriver"

class HiddenElement
  driver = Selenium::WebDriver.for :chrome
  wait = Selenium::WebDriver::Wait.new(timeout: 15)

  driver.get "https://the-internet.herokuapp.com/dynamic_loading"
  driver.find_element(xpath: "//a[@href='/dynamic_loading/1']").click
  driver.find_element(xpath: '//*[@id="start"]/button').click
  search_title = wait.until { driver.find_element(:xpath, '//*[@id="finish"]/h4') }
  search_title.displayed?
  puts('elements displayed')
  sleep 7

end