module BookKeeping
  VERSION = 1
end

module Accumulate
  def accumulate
    self.map {|n| yield n}
  end
end

class Array
  include Accumulate
end