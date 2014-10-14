class MainController < ApplicationController
  def index
  end

  def search
    if valid_postcode?(params[:postcode])
      @fsquare_data = get_venues(params[:postcode])
      @venues = @fsquare_data.venues.map do |venue|
        Venue.new(venue)
      end.sort { |a,b| b.checkins <=> a.checkins }
      @map_markers = Gmaps4rails.build_markers(@venues) do | venue, marker|
        marker.lat venue.latitude
        marker.lng venue.longitude
        marker.infowindow venue.name
      end
      render 'venues'
    else
      flash[:error] = 'This is not a valid postcode'
      render 'index'
    end
  end

  private

  def valid_postcode?(postcode)
    if postcode =~ /^([A-PR-UWYZ]([0-9]{1,2}|([A-HK-Y][0-9]|[A-HK-Y][0-9]([0-9]|[ABEHMNPRV-Y]))|[0-9][A-HJKS-UW])\s?[0-9][ABD-HJLNP-UW-Z]{2}|(GIR\ 0AA)|(SAN\ TA1)|(BFPO\ (C\/O\ )?[0-9]{1,4})|((ASCN|BBND|[BFS]IQQ|PCRN|STHL|TDCU|TKCA)\ 1ZZ))$$/i
      true
    else
      false
    end
  end

  def get_venues(postcode)
    coordinates = Geocoder.coordinates(postcode)
    FoursquareService.new(coordinates[0], coordinates[1]).search_venues
  end

  def get_coords_for(venues)

  end

end
