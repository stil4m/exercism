class Hamming

  def self.compute(left, right)
    raise ArgumentError if left.length != right.length

    left.split('')
        .zip(right.split(''))
        .select { |x,y| x != y }
        .size
  end
end