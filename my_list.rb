require_relative 'my_enumerable'

# Create a class MyList that has an instance variable @list.
class MyList
  include MyEnumerable

  def initialize(*items)
    @list = items
  end

  # In MyList implement a method #each that yields successive members of @list and uses the MyEnumerable module.
  def each(&element)
    @list.each(&element)
  end
end

# tests
list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e < 5 }) #=> true
puts(list.all? { |e| e > 5 }) #=> false

puts(list.any? { |e| e == 2 }) #=> true
puts(list.any? { |e| e == 5 }) #=> false

puts list.filter(&:even?) #=> [2, 4]
