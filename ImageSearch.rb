require "selenium-webdriver"

class ImageSearch
driver = Selenium::WebDriver.for :chrome

driver.navigate.to "http://duckduckgo.com"

search_input = driver.find_element(xpath: '//*[@id="searchbox_input"]')
search_input.send_keys('Eiffel Tower')
search_input.send_keys(:enter)
driver.find_element(link_text: "Images").click
sleep 3

end