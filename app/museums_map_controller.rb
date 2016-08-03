class MuseumsMapController < UIViewController
  def loadview
    self.view = MKMapView.alloc.init
  end
end