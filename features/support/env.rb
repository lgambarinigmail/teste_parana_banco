require 'watir'
require 'selenium-webdriver'


Selenium::WebDriver::Chrome::Service.driver_path = "././browser/chromedriver.exe"

browser = Watir::Browser.new 
browser.window.maximize

$browser = browser
$url = "https://the-internet.herokuapp.com/challenging_dom"