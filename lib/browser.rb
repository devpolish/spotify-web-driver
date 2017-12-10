# Set your browser here
# Depending what browser is you will need the indicated web driver
# Firefox uses geckodriver
# Chrome uses chromedriver
# Opera also uses chromedriver depending of your version read more at https://stackoverflow.com/a/26813266
require 'selenium-webdriver'
require 'yaml'
module WebBrowser
  include Selenium
  config = YAML.load_file('config/credentials.yml')
  BROWSER = config["spotify"]["browser"].to_sym
  BROWSERS = [:opera, :firefox, :chrome]
  def open_url(url)
    create_instance_for {
      @driver.navigate.to(url)
    }
  end

  def create_instance_for
    if BROWSERS.include?(BROWSER) {
      @driver = WebDriver.for BROWSER
    }
  end
end
