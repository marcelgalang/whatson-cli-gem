require 'open-uri'
require 'nokogiri'
require 'pry'

url = 'http://www.tvguide.com/trending-tonight/'
doc = Nokogiri::HTML(open(url))
puts doc.at_css("title").text
# binding.pry
doc.css(".listings-program").each do |item|
  # binding.pry

  name = item.at_css(".listings-program-link").text
  airing = item.at_css(".listings-program-airing-info").text
  description = item.at_css(".listings-program-description").text
  puts "#{name} - #{airing}"
  puts "#{description}"
end
#   binding.pry
#   mbmovie.each do |movie_info|

#   puts show.at_css(".movieTitle").text
  # name = show.at_css(".mb-movie , .movie_info , .movieTitle").text
  # rating = show.at_css(".tMeterScore").text
  # description = show.at_css(".popoverTrigger").text
  # puts "#{name} - #{rating} - #{description}"


  # # all_shows = doc.css("div#movies-collection")
  #   show_profile = doc.css("div.mb-movies")
  #   show_info = show_profile.css("div.movie_info")
  #   binding.pry
  #   show_profile.each do |att|
  #     binding.pry
  #     # production = {
  #       name= att.css("h3.movieTitle").text
  #       rating= att.css("span.tMeterScore").text
  #       description= att.css("div.consensus").text


  #     puts "#{name} - #{rating} - #{description}"
  #   end