class MyRange
  attr_accessor :lowerEndPoint, :upperEndPoint
  def initialize (lowerEndPoint, upperEndPoint)
    raise RangeError if lowerEndPoint > upperEndPoint
    @lowerEndPoint = lowerEndPoint
    @upperEndPoint = upperEndPoint
  end
  def to_s
    "[#{@lowerEndPoint},#{@upperEndPoint}]"
  end
  def contains?(findPoint)
    lowerEndPoint <= findPoint &&
    findPoint <= upperEndPoint
  end
  def ==(target)
    @lowerEndPoint == target.lowerEndPoint &&
    @upperEndPoint == target.upperEndPoint
  end
  def connect?(target)
    (contains?(target.lowerEndPoint) ||
      contains?(target.upperEndPoint)) \
    ||
    (target.contains?(lowerEndPoint) ||
      target.contains?(upperEndPoint))
  end
end

class OpenRange < MyRange
  def contains?(findPoint)
    lowerEndPoint < findPoint &&
    findPoint < upperEndPoint
  end
end