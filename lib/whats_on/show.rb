class WhatsOn::Show
  attr_accessor :name, :airing, :description


  def self.all
    self.scrape_shows
  end

  def self.scrape_shows

  shows_array= []

    doc = Nokogiri::HTML(open("http://www.tvguide.com/trending-tonight/"))

    doc.css(".listings-program").each do |item|
      production = {
        :name => item.at_css(".listings-program-link").text,
        :airing => item.at_css(".listings-program-airing-info").text,
        :description => item.at_css(".listings-program-description").text
      }
        shows_array<<production
    end
    shows_array
  end
end





