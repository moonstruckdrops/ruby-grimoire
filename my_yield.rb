#==============================
#
# 自己yield
# (ブロックにselfを渡す)
#
#==============================
class Person
  attr_accessor :name, :surname

  def initialize
    yield self
  end
end

joe = Person.new do |p|
  p.name = "Joe"
  p.surname = "Smith"
end

p joe #=> #<Person:0x007fe69384cc00 @name="Joe", @surname="Smith">
