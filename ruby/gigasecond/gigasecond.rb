module BookKeeping
  VERSION = 6
end

class Gigasecond
  def self.from(time)
    time + 10 ** 9
  end
end