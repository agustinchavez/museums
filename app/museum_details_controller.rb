class MuseumDetailsController < UIViewController
  def loadView
    self.view = UIWebView.alloc.init
  end

  def viewWillAppear(animated)
    navigationController.setNavigationBarHidden(false, animated:true)
  end

  def showDetailsForMuseum(museum)
    navigationItem.title = brewery.title
     request = NSURLRequest.requestWithURL(museum.url)
    self.view.loadRequest(request)
  end
end