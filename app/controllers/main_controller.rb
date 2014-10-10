class MainController < ApplicationController
  def index
  end

  def search
    if valid_postcode?(params[:postcode])
      @fsquare_data = get_venues(params[:postcode])
      @venues = @fsquare_data.venues.map do |venue|
        Venue.new(venue)
      end
      render 'venues'
    else
      errors.add(:base, 'this is not a valid postcode')
    end
  end

  private

  def valid_postcode?(postcode)
    # postcode = postcode.replace(/\s/g, "")
    # regex = /^[A-Z]{1,2}[0-9]{1,2} ?[0-9][A-Z]{2}$/i
    # regex.test(postcode) ? true : false
    true
  end

  def get_venues(postcode)
    coordinates = Geocoder.coordinates(postcode)
    FoursquareService.new(coordinates[0], coordinates[1]).search_venues
  end

end
