module Models
  class Article
    attr_accessor :title
    attr_accessor :user

    def initialize(title="", user)
      @title = title
      @user = user
    end
  end
end
