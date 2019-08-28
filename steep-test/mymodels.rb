# typed: true
class User
  def initialize(name)
    @name = name
  end

  def first_name
    @name.split(" ").first
  end

  def size_of_last_name
    @name.split(" ").last.size
  end
end

module Main
  def self.show_user_name(user)
    puts user.first_name
  end
end

#user = User.new("Uchio Kondo")
user = User.new(12345)
Main.show_user_name(user)
