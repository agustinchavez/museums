class Museum
  attr_reader :title, :coordinate

  def initialize(title, latitude, longitude)
    @title = title
    @coordinate = CLLocationCoordinate2D.new
    @coordinate.latitude = latitude
    @coordinate.longitude = longitude
  end

  def title
    @title
  end


  def coordinate
    @coordinate
  end

end