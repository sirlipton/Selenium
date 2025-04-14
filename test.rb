require "selenium-webdriver"

class Google
  name = "test"
  puts name.length


  driver = Selenium::WebDriver.for :chrome

  driver.get("https://google.com")







end

