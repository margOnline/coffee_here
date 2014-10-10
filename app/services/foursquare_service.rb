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
      :client_id => 'WAMOYWKSVBLDXMXLEONCZ0NYUWPMOI3GF3X22LF5KOVXYLKX',
      :client_secret => 'WAIMERRVPCIB5HMPAKSC0K2TN5IPK1NR1OOUZCIT35V4PRIZ'
    )
  end

end
