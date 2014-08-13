grocery_list = ["rice", "carrots", "toilet paper", "apples", "salmon"]


def show_list(list)
  list.each do |item|
    puts "* #{item}"
  end
  puts "Your list has #{list.count} items"

  if list.include?("bananas")
    puts "You need to pick up bananas"
  else
    puts "You don't need to pick up bananas today"
  end

  puts "The second item is #{list[1]}"

  puts "Alphabetically sorted"
  list.sort.each do |item|
    puts "* #{item}"
  end

  puts "Alphabetically sorted (no salmon)"
  list.delete("salmon")
  list.sort.each do |item|
    puts "* #{item}"
  end
end


show_list(grocery_list)