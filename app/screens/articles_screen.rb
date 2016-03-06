class ArticlesScreen < PM::TableScreen
  title 'Articles'

  def on_load
    @articles = []
    load_articles
  end

  def table_data
    [{
      cells: @articles.map { |article|
        {
          title: article.title,
          subtitle: article.user.id
        }
      }
    }]
  end

  def load_articles
    @articles = (1..10).map { |index|
      user = Models::User.new("user #{index}")
      Models::Article.new("Article #{index}", user)
    }
  end
end
