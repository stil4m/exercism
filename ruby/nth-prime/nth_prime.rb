module BookKeeping
  VERSION = 1
end

class Prime

  def self.nth(count)
    raise ArgumentError if count <= 0

    answer = [2]
    current = 1
    while answer.length < count do
      current+=2
      answer << current if isPrime(current, answer)
    end
    answer[-1]
  end

  def self.isPrime(n, primes)
    not primes.any? {|p| n % p == 0}
  end
end