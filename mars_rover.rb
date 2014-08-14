class Rover
  attr_accessor :position_y, :position_x, :direction, :instructions
  def initialize(grid, position_x, position_y, direction )
    @grid = grid
    @position_x=position_x
    @position_y=position_y
    @direction=direction
    @plateau_x = @grid.x
    @plateau_y = @grid.y
    @grid.occupy(@position_x, @position_y)
  end

  def move(instructions)
    # starting_position = [@position_x, @position_y, @direction]

    instructions.each_char do |command|
      if command=="L" && @direction=="N"
        @direction = "W"
        puts "Changing direction from #{command} to #{direction}"
      elsif command == "L"&& @direction=="W"
        @direction = "S"
        puts "Changing direction from #{command} to #{direction}"
      elsif command == "L"&& @direction=="S"
        @direction = "E"
        puts "Changing direction from #{command} to #{direction}"
      elsif command == "L"&& @direction=="E"
        @direction = "N"
        puts "Changing direction from #{command} to #{direction}"
      elsif command=="R" && @direction=="N"
        @direction = "E"
        puts "Changing direction from #{command} to #{direction}"
      elsif command == "R"&& @direction=="W"
        @direction = "N"
        puts "Changing direction from #{command} to #{direction}"
      elsif command == "R"&& @direction=="S"
        @direction = "W"
        puts "Changing direction from #{command} to #{direction}"
      elsif command == "R"&& @direction=="E"
        @direction = "S"
        puts "Changing direction from #{command} to #{direction}"
      end

      if command=="M"        
        if @direction == "N" && @position_y < @plateau_y && @grid.y_occupied?
          @position_y +=1
          puts "Changed position_y to #{position_y}"
        elsif @direction == "S" && @position_y > 1
          @position_y-=1
          puts "Changed position_y to #{position_y}"
        elsif @direction == "W" && @position_x > 1
          @position_x -=1
          puts "Changed position_x to #{position_x}"
        elsif @direction == "E" && @position_x < @plateau_x
          @position_x+=1
          puts "Changed position_x to #{position_x}"
        end                    
      end
    end
  
    puts "The rover is at #{position_x}, #{position_y}, facing #{direction}"
    




    m = Array.new(@plateau_y, 'x') {Array.new(@plateau_x,'x')}
    # array_of_rev_y=[]
    
    # array_of_y=1..@plateau_y
    # array_of_y=array_of_y.to_a.reverse!
    # puts "Array of y after reverse is #{array_of_y}"
    
    
    # (1..@plateau_y).each do |num|
         
    #     array_of_rev_y[num] = 
    #   end
    # end

    # puts "Array of rev y is #{array_of_rev_y}"
    # # m[@plateau_y]

    puts "MAP "
    m.each do |r|
      puts r.map { |p| print p }.join(" ")
    end  
    





    puts ""
  end
end

class Grid 

  attr_accessor :x, :y, :x_occupied, :y_occupied

  def initialize(size_x, size_y)
    @x = size_x
    @y = size_y
    @x_occupied = []
    @y_occupied = []
  end

  def grid_map
    m = Array.new(3) {Array.new(3)}
    puts m  
  end

  def occupy(x,y)
    puts "Occupying grid..."
    if !@x_occupied.include?(x)
      @x_occupied << x 
    else
      raise "Sorry this x spot is taken"
    end
    if !@y_occupied.include?(y)
      @y_occupied << y 
    else
      raise "Sorry this y spot is taken"
    end
  end

end



class Commander

end


# rover = Rover.new(5, 5, 1, 2, "N")
# rover.move("LMLMLMLMM")

# rover2=Rover.new(5,5,3,3,"E")
# rover2.move("MMRMMRMRRM")

grid = Grid.new(5,5)
rover3=Rover.new(grid,3,3,"E")
rover4=Rover.new(grid,2,2,"N")
puts grid.x_occupied.inspect
puts grid.y_occupied.inspect

rover3.move("MMRMMRMRRM")
#rover4.move("MMMM")



