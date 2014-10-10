require 'open-uri'
require 'json'

class FoursquareService

  def initialize(lat,long)
    @lat = lat
    @long = long
  end

  def search_venues
    foursquare.search_venues(
      :ll => "#{@lat},#{@long}", :v => '20140806', :query => 'coffee'
    )
  end

  def foursquare
    Foursquare2::Client.new(
      :client_id => ENV['FOURSQUARE_ID'],
      :client_secret => ENV['FOURSQUARE_SECRET']
    )
  end

end
