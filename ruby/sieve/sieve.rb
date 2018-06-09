module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(count)
    @count = count
  end

  def primes
    return [] if @count < 2
    answer = [2]

    3.step(@count, 2).each do |n|
      answer << n if answer.all? {|p| n % p != 0}
    end
    answer
  end
end