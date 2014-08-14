class Point

     #attr_writer :x, :y  #setter method     
     #attr_reader :x, :y
     attr_accessor :x, :y     

     def initialize(x, y)
          @x=x
          @y=y
     end

     def to_s
          "#{@x}, #{@y}"
     end

     def +(another_point)
         x= @x + another_point.x
         y= @y + another_point.y
         Point.new(x,y)
     end

end

class Line
      attr_accessor :start_point, :end_point
      def initialize(start_point, end_point)
          @start_point=start_point
          @end_point=end_point
     end

     def to_s
          "#{@start_point} == #{@end_point}"
      end
end

class Vector < Line #inherit from Line
  attr_accessor :direction

  def initialize(start_point, end_point, direction)
    super(start_point, end_point)
    @direction=direction
  end

  def to_s
    super + "-> #{direction}"
  end

  def change_direction(new_direction)
    
  end
end


p= Point.new(1, 3)
puts p.to_s

p1= Point.new(1,2)
p2=Point.new(3,4)

line= Line.new(p1, p2)
puts line.to_s

p3= p1 + p2