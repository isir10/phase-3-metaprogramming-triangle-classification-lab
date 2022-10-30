class Triangle
  # write code here
  attr_accessor :x,:y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  def kind
    raise TriangleError, 'Sum of two sides must be greater than the third.' if x + z < y || y + z < x || x + y < z
    raise TriangleError, 'Sum of two sides must not be equal to the third.' if x + z == y || y + z == x || x + y == z

    return :equilateral if x == y && x == z 
    return :isosceles   if x == y || y == z || x == z
    return :scalene     if x != y && y != z && x != z
  end
  class TriangleError < StandardError
    def message
      "Triangle Error"
    end
  end
end

