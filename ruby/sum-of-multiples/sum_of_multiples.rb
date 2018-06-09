module BookKeeping
  VERSION = 2
end


class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(value)
    (1..value - 1)
        .select {|n| @factors.any? {|f| n % f == 0}}
        .inject(0, :+)
  end
end