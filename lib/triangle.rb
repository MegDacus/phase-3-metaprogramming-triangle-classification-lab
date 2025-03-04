class Triangle
  attr_reader :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind

    if (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side3 + @side1 > @side2)
      if @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif @side1 == @side2 || @side2 == @side3 || @side3 == @side1
        :isosceles
      else
        :scalene
      end
    else 
      raise TriangleError
    end      
  end

  class TriangleError < StandardError
    "This is not a valid triangle"
  end
end
