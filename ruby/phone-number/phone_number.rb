module BookKeeping
  VERSION = 2
end

class PhoneNumber
  def self.clean(input)
    remaining = input.delete("()+\\- \\.")
    return nil if remaining =~ /[^0-9]/

    if remaining.size == 11
      if remaining[0] == '1'
        remaining = remaining[1..-1]
      else
        return nil
      end
    end


    return nil if remaining.size != 10

    if remaining[0] =~ /[2-9]/ && remaining[3] =~ /[2-9]/
      remaining
    end
  end
end