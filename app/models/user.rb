module Models
  class User
    attr_accessor :id

    def initialize(id="")
      self.id = id
    end
  end
end
