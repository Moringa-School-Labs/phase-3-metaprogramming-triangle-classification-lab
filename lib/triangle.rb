class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid_triangle
    if a == b && b == c
      :equilateral
      elsif a == b || a == c || b == c 
        :isosceles
      else
        :scalene
      end
  end

   def greater_than_zero?
    [a, b, c].all?(&:positive?)
  end

  def triangle_inequality?
    a + b > c && a + c > b && b + c > a
  end

  def valid_triangle
    raise TriangleError unless greater_than_zero? && triangle_inequality?
  end

  class TriangleError < StandardError
  end


end
