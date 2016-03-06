class ArticleListViewController < UIViewController
  def viewDidLoad
    super

    self.title = 'Articles'
    user = Models::User.new('abcde')
    article = Models::Article.new('Sample', user)
    @articles = [
      article
    ]
    @table = UITableView.alloc.initWithFrame(self.view.bounds)


    view.addSubview(@table)
    @table.dataSource = self
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
     @reuseIdentifier ||= "CELL_IDENTIFIER"

    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier) || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:@reuseIdentifier)
    end

    article = @articles[indexPath.row]
    cell.textLabel.text = article.title
    # cell.detailTextLabel.text = article.user.id

    cell
  end

  def tableView(tableView, numberOfRowsInSection: section)
    @articles.count
  end
end
