students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

def show_cohort (cohort)
  puts "Showing cohort students"
  cohort.each {|key, value| puts "#{key}: #{value} students" }
  
  puts "Showing cohort names"
  cohort.keys.each {|a| puts "#{a}"}
  
  puts "Increasing value by 5% and displaying (rounded numbers)"
  cohort.each do |key, value| 
    cohort[key] += (value*0.05).round
  end
  cohort.each {|key, value| puts "#{key}: #{value} students" }

  puts "Deleting 2nd cohort and displaying the cohorts"
  cohort.delete("cohort2")
  cohort.each {|key, value| puts "#{key}: #{value} students" }

  
  total=0
  cohort.each { |k,v| total+= cohort[k]  }
  puts "Total amount of students is #{total}"
end
students.merge!(:cohort4 => 43)
show_cohort(students)