require_relative 'my_enumerable'
class MyList
  def initialize(*list)
    @list = list
  end

  include my_enumerable
  def each
    @list.each { |value| yield value if block_given? }
  end
end

list = MyList.new(1, 2, 3, 4)
puts list.all? { |e| e < 5 }
puts list.all? { |e| e > 5 }
puts list.any? { |e| e == 2 }
puts list.any? { |e| e == 5 }
puts list.filter &:even?
