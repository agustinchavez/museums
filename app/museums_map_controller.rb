class MuseumsMapController < UIViewController
  def loadview
    self.view = MKMapView.alloc.init
  end

  def viewDidLoad
    coordinates = CLLocationCoordinate2D.new(50.85, 4.35)
    region = MKCoordinateRegionMake(coordinates,MKCoordinateSpanMake(3.1, 3.1))
    self.view.setRegion(region)
  end
end