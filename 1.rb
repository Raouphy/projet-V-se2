require 'rubygems'
require 'nokogiri'
require 'open-uri'



page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/95/vaureal.html'))
page.css('p:contains("@")').each do |el|

	puts el.text
   

 


