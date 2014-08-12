

# task 1
tip=55*0.15
puts "Were you served by a sexy a waitress? (Yes/No?)"
waitress = gets.chomp.downcase
until waitress=='no' || waitress=='yes'
  puts "Were you served by a sexy a waitress? (Yes/No?)"
  waitress = gets.chomp.downcase
end
  case waitress
  when "yes"
    puts "You should give #{tip} to the sexy waitress"
  when "no"
    puts "You should give #{tip} to the old hag"
  end

# task 2
3.times {puts}
puts "TASK 2"
puts 'hello'+1.to_s

# task 3
3.times {puts}

puts "TASK 3"
# result =45628 * 7839
puts "The result of 45628 * 7839 is #{45628 * 7839}"

#task 4
3.times {puts}

puts "TASK 4"
puts (true && false) || (false && true) || !(false && false)