module BookKeeping
  VERSION = 1
end

class Grains
  MAX = 64

  def self.square(n)
    raise ArgumentError if n <= 0 || n > MAX
    2 ** (n - 1)
  end

  def self.total
    (1..MAX)
        .map {|n| square(n)}
        .inject(:+)
  end
end