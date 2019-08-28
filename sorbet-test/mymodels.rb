# typed: true
require 'sorbet-runtime'

class User
  extend T::Sig

  sig {params(name: String).returns(T.untyped)}
  def initialize(name)
    @name = name
  end

  sig {returns(String)}
  def first_name
    @name.split(" ").first
  end

  sig {returns(Integer)}
  def size_of_last_name
    @name.split(" ").last.size
  end
end

module Main
  extend T::Sig
  sig {params(user: User).returns(NilClass)}
  def self.show_user_name(user)
    puts user.first_name
  end
end

#user = User.new("Uchio Kondo")
user = User.new(12345)
Main.show_user_name(user)
