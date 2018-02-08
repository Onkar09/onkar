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
caps['browser'] = 'Chrome'
# caps['browser_version'] = '14.0'

caps['os'] = 'Windows'
# caps['browserstack.networkLogs'] = true
# caps ['os_version'] = '10'

# caps['browserstack.useLongerQueue'] = 'true'


driver = Selenium::WebDriver.for(:remote,
  # :url => "http://onkar432:tpxF62yvGa2t7z4MZ7JZ@fuhub.bsstag.com:8080/wd/hub",
  :url => "http://onkar269:t7jdGiACoXDKiDkpEq3d@cihub.bsstag.com:4444/wd/hub",
  :desired_capabilities => caps)
# driver.navigate.to "http://www.popuptest.com/popuptest3.html"
# driver.navigate.to "http://localtesting.browserstack.com"
# driver.navigate.to "https://admin:abcd@hulk.bsstag.com/admin/terminals" 
driver.navigate.to "http://www.google.com"
# driver.navigate.to "http://57227f79.ngrok.io"
# driver.navigate.to "http://ff6acad2.ngrok.io"
element = driver.find_element(:name, 'q')
element.send_keys "BrowserStack"
element.submit
# driver.sleep 150
5000.times{ puts driver.title}
driver.quit