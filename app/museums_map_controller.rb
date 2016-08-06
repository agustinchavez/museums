class MuseumsMapController < UIViewController
  def loadview
    self.view = MKMapView.alloc.init
    self.view.delegate = self
  end

  def viewDidLoad
    coordinates = CLLocationCoordinate2D.new(41.88, 87.62)
    region = MKCoordinateRegionMake(coordinates,MKCoordinateSpanMake(3.1, 3.1))
    self.view.setRegion(region)

    Museum.all.each do |museum|
      self.view.addAnnotation(museum)
    end
  end

  def viewWillAppear(animated)
    navigationController.setNavigationBarHidden(true, animated:true)
  end

  def mapView(mapView, viewForAnnotation:museum)
    view = MKPinAnnotationView.alloc.initWithAnnotation(brewery, reuseIdentifier:ViewIdentifier)
    button = UIButton.buttonWithType(UIButtonTypeDetailDisclosure)
    button.addTarget(self, action: :'showDetails:', forControlEvents:UIControlEventTouchUpInside)
    view.rightCalloutAccessoryView = button
    view
  end

  def showDetails(sender)
    view.selectedAnnotations[0]
    puts museum.url
    navigationController.pushViewController(museumDetailsController, animated:true)
    museumDetailsController.showDetailsForMuseum(museum)
  end

  private

  def museumDetailsController
    MuseumDetailsController.alloc.init
  end

end