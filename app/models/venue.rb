class Venue
  def initialize(hash)
    @venue = hash
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
end
