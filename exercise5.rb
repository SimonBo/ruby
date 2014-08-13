def convert
  puts "What u wanna convert?"
  f=gets.to_i
  
  puts "#{(f - 32) * 5/9}"
end

convert