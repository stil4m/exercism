module BookKeeping
  VERSION = 3
end

class Year
  def self.leap?(n)
    if n % 400 == 0 then
      return true
    end
    if n % 100 == 0 then
      return false
    end
    n % 4 == 0
  end
end