class MainScreen < PM::Screen
  title 'Main'

  def on_load
    set_nav_bar_button :right, title: 'Articles', action: :open_articles
    @layout = MainLayout.new(root: self.view).build
  end

  def open_articles
    open ArticlesScreen
  end
end
