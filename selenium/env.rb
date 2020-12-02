require 'pry'
require 'pry-byebug'
require 'selenium-webdriver'
require 'rspec'

$driver = Selenium::WebDriver.for :chrome
$wait = Selenium::WebDriver::Wait.new(:timeout => 10)
