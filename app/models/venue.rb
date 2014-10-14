class Venue
  def initialize(data)
    @venue = data
  end

  def name
    @venue.categories ? @venue.categories.first.name : @venue.name
  end

  def checkins
    @venue.stats.checkinsCount
  end

  def distance
    @venue.location.distance
  end

  def latitude
    @venue.location.lat
  end

  def longitude
    @venue.location.lng
  end
end
