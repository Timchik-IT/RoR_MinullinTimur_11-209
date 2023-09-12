require 'HTTParty'
require 'nokogiri'

url = 'https://anekdot.ru'
html = HTTParty.get(url)
doc = nokogiri::HTML(html)

puts doc.css('.text')[0].text