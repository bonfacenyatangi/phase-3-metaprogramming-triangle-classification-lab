class Triangle
  # write code here
    class TriangleError < StandardError
  end

  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind
    validate_triangle

    if @length == @width && @width == @height
      :equilateral
    elsif @length == @width || @length == @height || @width == @height
      :isosceles
    else
      :scalene
    end
  end

  private

  def validate_triangle
    sides = [@length, @width, @height].sort
    if sides.min <= 0 || sides[0] + sides[1] <= sides[2]
      raise TriangleError, 'Invalid triangle'
    end
  end
end

# triangle = Triangle.new(7, 7, 5)
# triangle_kind = triangle.kind

# puts triangle_kind