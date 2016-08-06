class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'museums'
    rootViewController.view.backgroundColor = UIColor.whiteColor
    museumsMapController = MuseumsMapController.alloc.init
    museumsListController = MuseumsListController.alloc.init

    tabBarController = UITabBarController.alloc.init
    tabBarController.viewControllers = [museumsMapController, museumsListController]


    navigationController = UINavigationController.alloc.initWithRootViewController(tabBarController)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible
    true
  end
end
