# Create a module MyEnumerable that implements the following methods (same as Enumerable):
module MyEnumerable

  #all? - checks if all elements comply with conditions
  def all?(&element)
    each { |item| return false unless element.call(item) }
    true
  end

  #any? - checks if any of the elements comply with conditions
  def any?(&element)
    each { |item| return true if element.call(item) }
    false
  end

  #filter/select - return only elements that comply with the attribute
  def filter(&element)
    result = []
    each { |item| result.push(item) if element.call(item) }
    result
  end
end

