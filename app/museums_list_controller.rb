class MuseumsListController < UITableViewController
  CELLID = 'CellId'

  def init
    self.tabBarItem = UITabBarItem.alloc.initWithTitle('List', image:UIImage.imageNamed('list.png'), tag:2)
    self
  end

  def viewDidLoad
    view.dataSource = view.delegate = self
  end

  def viewWillAppear(animated)
    navigationController.setNavigationBarHidden(false, animated:true)
  end

  def tableView(tableView, numberOfRowsInSection:section)
    Museum.all.count
  end


  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(CELLID) || begin
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELLID)
      cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton
      cell
    end

    cell.textLabel.text = Museum.all[indexPath.row].title
    cell
  end

  def tableView(tableView, accssoryButtonTappedForRowWithIndexPath:indexPath)
    museum = Museum.all[indexPath:row]
    navigationController.pushViewController(museumDetailsController)
    museumDetailsController.showDetailsForMuseum(museum)
  end

  private

  def museumDetailsController
    @museumsDetailsController ||= MuseumDetailsController.alloc.init
  end
end