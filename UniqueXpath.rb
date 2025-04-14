require "selenium-webdriver"

class UniqueXpath
driver = Selenium::WebDriver.for :chrome

driver.navigate.to "http://duckduckgo.com"

search_input = driver.find_element(xpath: '//*[@id="searchbox_input"]')
search_input.send_keys('https://the-internet.herokuapp.com/dynamic_loading')
search_input.send_keys(:enter)

driver.find_element(link_text: "Test Pages - Others").click
driver.find_element(link_text: "The-Internet").click
driver.find_element(link_text: "The Internet").click

driver.find_element(xpath: "//a[@href='/dynamic_loading/1']").click


end