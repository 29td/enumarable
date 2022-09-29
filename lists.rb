require_relative 'enumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&param)
    @list.each { |n| param.call(n) }
  end
end

list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
puts(list.filter(&:even?))
