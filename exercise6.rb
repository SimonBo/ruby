grocery_list = ["rice", "carrots", "toilet paper", "apples", "salmon"]


def show_list(list)
  list.each do |item|
    puts "* #{item}"
  end
  puts "Your list has #{list.count} items"
end

show_list(grocery_list)