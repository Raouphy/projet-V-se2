
require 'rubygems'
require 'nokogiri'   
require 'open-uri'


def get_the_email_of_a_townhal_from_its_webpage()

page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
page.css('a.lientxt').map { |link| puts "http://annuaire-des-mairies.com/"+link['href'] }

end

get_the_email_of_a_townhal_from_its_webpage
 






