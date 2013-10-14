class Open < Close
  def contains?(findPoint)
    lowerEndPoint < findPoint &&
    findPoint < upperEndPoint
  end
end