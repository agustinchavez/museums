class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'museums'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    museumsMapController = MuseumsMapController.alloc.init
    navigationController = UINavigationController.alloc.initWithRootViewController(museumsMapController)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible
    true
  end
end
