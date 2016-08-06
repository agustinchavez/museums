class MuseumsListController < UITableViewController
  CELLID = 'CellId'
  def viewWillAppear(animated)
    navigationController.setNavigationBarHidden(false, animated:true)
  end

  def tableView(tableView, numberOfRowsInSection:section)
    Museum.all.count
  end


  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELLID)
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton
    cell
  end
end