class User
  attr_accessor :name, :email, :birthday

  ALL = []

  def initialize(name, email, birthday)
    ALL << self
    @name = name
    @email = email
    @birthday = birthday
  end

  def self.all
    ALL
  end

end
