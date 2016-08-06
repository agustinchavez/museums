class MuseumDetailsController < UIViewController
  def loadView
    self.view = UIWebView.alloc.init

  end

  def showDetailsForMuseum(museum)
     request = NSURLRequest.requestWithURL(museum.url)
    self.view.loadRequest(request)
  end
end