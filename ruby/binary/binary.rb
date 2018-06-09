module BookKeeping
  VERSION = 3
end

class Binary
  def self.to_decimal(input)
    raise ArgumentError if input =~ /[^01]/
    input
        .reverse
        .chars
        .map {|n| n.to_i}
        .each_with_index.map {|v, n| 2 ** n * v}
        .inject(:+)
  end
end