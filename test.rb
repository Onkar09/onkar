require 'rubygems'
require 'selenium-webdriver'

# Input capabilities
caps = Selenium::WebDriver::Remote::Capabilities.new
# caps[:browserName] = 'android'
# # caps['device'] = 'iPad Pro'
# caps['device'] = 'Google Pixel'
# caps['realMobile'] = 'true'
# caps['os_version'] = '7.1'
# caps['build'] = 'browsermock branch Tests with rails & hub branch'
caps['browserstack.debug']=true
# caps['browserstack.machine'] = '194.165.190.187'
# caps['name'] = 'JS video for realMobile'
# caps['safariAllowPopups']= true
# caps['browserstack.local'] = 'true'
# caps['browserstack.video'] = 'true'
# caps['acceptSslCerts'] = 'true'
caps['browser'] = $BROWSER
# caps['browser_version'] = '14.0'

caps['os'] = $OS
# caps['browserstack.networkLogs'] = true
# caps ['os_version'] = '10'

# caps['browserstack.useLongerQueue'] = 'true'


driver = Selenium::WebDriver.for(:remote,
  # :url => "http://onkar432:tpxF62yvGa2t7z4MZ7JZ@fuhub.bsstag.com:8080/wd/hub",
  :url => "http://onkar15:g8pm2ChQ2QEnadmAMPGq@hub.browserstack.com:8080/wd/hub",
  :desired_capabilities => caps)

driver.navigate.to "http://www.google.com"

element = driver.find_element(:name, 'q')
element.send_keys "BrowserStack"
element.submit

5.times{ puts driver.title}

driver.quit
