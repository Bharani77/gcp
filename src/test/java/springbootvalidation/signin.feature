Feature: browser automation

Background:
  * configure driver = { type: 'chrome'}
  # * configure driver = { type: 'chromedriver' }
  # * configure driver = { type: 'geckodriver' }
  # * configure driver = { type: 'safaridriver' }
  # * configure driver = { type: 'mswebdriver' }

Scenario: try to signin

  Given driver 'localhost:8080/'
  And driver.input('input[name=userName]', 'hello')
  * def bytes = driver.screenshot()
  * eval karate.embed(bytes, 'image/png')
  And driver.input('input[name=password]', 'wo')
  When driver.submit('.login-btn')
  Then match driver.html('.red') contains 'size must be between 7 and 20'
  * def bytes = driver.screenshot()
  * eval karate.embed(bytes, 'image/png')
  
  Given driver 'localhost:8080/'
  And driver.input('input[name=userName]', 'hello')
  And driver.input('input[name=password]', 'worlder')
  When driver.submit('.login-btn')
 
  * def bytes = driver.screenshot()
  * eval karate.embed(bytes, 'image/png')