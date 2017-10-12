require 'rubygems'
require 'nokogiri'   
require 'open-uri'


puts "---------1------\n"

page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
page.css('a.lientxt').map { |link| puts "http://annuaire-des-mairies.com/"+link['href'] }



puts "----------2------\n"

page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/95/vaureal.html'))
page.css('p:contains("@")').each do |el|

	puts el.text
   
end






