require_relative 'MyEnumerable'

class MyList
  include MyEnumerable
  
  #create an instance variable @list
  def initialize(*items)
    @list = items
  end

  #implement a method #each that yields successive members of @list and uses the MyEnumerable module
  def call_find_all(&block)
    find_all(@list, &block)
  end
end

my_list = MyList.new(1, 2, 3, 6, 22)

# Find all number greater than 2
all_items = my_list.call_find_all { |item| item > 2 }
puts "The list items greater than 2 are: #{all_items}"




