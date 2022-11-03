module MyEnumerable
  def all?
    result = true
    each { |i| result = false unless yield i }
    result
  end

  def any?
    result = false
    each { |i| result = true if yield i }
    result
  end

  def filter
    array = []
    each { |i| array.push(i) if yield i }
    array
  end
end
