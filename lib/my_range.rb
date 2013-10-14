# -*- encoding: utf-8 -*-

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
    contains?(target.lowerEndPoint) ||
    contains?(target.upperEndPoint)
  end
end

class OpenRange < MyRange
  def contains?(findPoint)
    lowerEndPoint < findPoint &&
    findPoint < upperEndPoint
  end
end