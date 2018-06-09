class PrimeFactors


  def self.for(n)
    result = []
    c = 2
    while true do
      return result if n <= 1

      if n % c == 0 then
        result.push(c)
        n = n / c
      else
        c = c + 1
      end

    end
    return result
  end

end