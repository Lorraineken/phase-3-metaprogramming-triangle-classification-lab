

class Triangle

   attr_accessor  :a, :b, :c
  
  def initialize(a,b,c)
    @a = a 
    @b = b
    @c = c
  end

  def kind

    if ((self.a <= 0) || (self.b <= 0) || (self.c <= 0) ) 
      raise TriangleError
    end

    if ((self.a + self.b) <= self.c || (self.a + self.c) <= self.b || (self.b + self.c) <= self.a)
      raise TriangleError
    end

    if (self.a == self.b && self.b == self.c)
     :equilateral
    elsif (self.a == self.b && self.b != self.c || self.a ==self.c && self.c !=self.b || self.b == self.c && self.c != self.a)
      :isosceles
    else 
      :scalene
    end
  end

  class TriangleError < StandardError
        
  end
   
end

tri=Triangle.new(3,4,5)

pp tri.kind