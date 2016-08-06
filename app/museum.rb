class Museum

  def initialize(latitude, longitude, name, url)
    @name = name
    @coordinate = CLLocationCoordinate2D.new
    @coordinate.latitude = latitude
    @coordinate.longitude = longitude
  end

  def title
    @name
  end


  def coordinate
    @coordinate
  end

  class << self
    def all
      [
        Museum.new(41.8796, 87.6237, 'Art Institute of Chicago', 'https://en.wikipedia.org/wiki/Art_Institute_of_Chicago'),
        Museum.new(41.8663, 87.6170, 'The Field Museum', 'https://en.wikipedia.org/wiki/Field_Museum_of_Natural_History'),
        Museum.new(41.7923, 87.5804, 'Museum of Science and Industry', 'https://en.wikipedia.org/wiki/Museum_of_Science_and_Industry_(Chicago)'),
        Museum.new(41.8663, 87.6068, 'Adler Planeterium', 'https://en.wikipedia.org/wiki/Adler_Planetarium'),
        Museum.new(41.8972, 87.6215, 'Museum of Contemporary Art Chicago', 'https://en.wikipedia.org/wiki/Museum_of_Contemporary_Art,_Chicago'),
        Museum.new(41.8914, 87.6091, 'Chicago Children\'s Museum', 'https://en.wikipedia.org/wiki/Chicago_Children%27s_Museum'),
        Museum.new(41.8676, 87.6140, 'Shedd Aquarium', 'https://en.wikipedia.org/wiki/Shedd_Aquarium')
      ]
    end
  end
end