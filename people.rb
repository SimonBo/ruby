class Person
 attr_accessor :name
 def initialize(name)
    @name=name
  end

  def greeting
     puts "Hi, my name is #{@name}"
   end 
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end


chris=Person.new("Chris")
chris.greeting

cristina=Person.new("Cristina")
cristina.greeting

julie=Instructor.new("Julie")
julie.teach

chris.teach #throws an error because 'teach' is not a Student class method