class Series
  def initialize(input)
    @input = input
  end

  def slices(n)
    raise ArgumentError if n > @input.size
    (0..@input.size - n)
        .map {|i| @input[i..i + n - 1]}
  end
end