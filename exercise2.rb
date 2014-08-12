# task 1
tip=55*0.15
puts "Were you served by a sexy a waitress? (Yes/No?)"
waitress = gets.chomp.downcase
case waitress
  when "yes"
    puts "You should give #{tip} to the sexy waitress"
  when "no"
    puts "You should give #{tip} to the old hag"
  else
    puts "Plz answer Yes or No"
end
# task 2

puts "TASK 2"
puts 'hello'+1.to_s

# task 3
puts "TASK 3"
result =45628 * 7839
puts "The result of 45628 * 7839 is #{result}"

#task 4
puts "TASK 4"
puts (true && false) || (false && true) || !(false && false)