class MuseumsListController < UITableViewController
  def viewWillAppear(animated)
    navigationController.setNavigationBarHidden(false, animated:true)
  end
end