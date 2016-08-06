class MuseumsMapController < UIViewController
  def loadview
    self.view = MKMapView.alloc.init
  end

  def viewDidLoad
    coordinates = CLLocationCoordinate2D.new(41.88, 87.62)
    region = MKCoordinateRegionMake(coordinates,MKCoordinateSpanMake(3.1, 3.1))
    self.view.setRegion(region)

    Museum.all.each do |museum|
      self.view.addAnnotation(museum)
    end
  end
end