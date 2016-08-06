class MuseumDetailsController < UIViewController
  def loadView
    self.view = UIWebView.alloc.init
    request = NSURLRequest.requestWithURL(Museum.all.first.url)
    self.view.loadRequest(request)
  end

end