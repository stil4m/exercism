module BookKeeping
  VERSION = 3
end

class RunLengthEncoding
  def self.encode(input)
    input.chars
        .chunk_while {|n, m| n == m}
        .map {|x| x.size == 1 ? x[0] : x.size.to_s + x[0]}
        .join
  end

  def self.decode(input)
    output = ''
    input.split(/(?<=[^0-9])/).each do |c|
      if c.size == 1
        output += c
      else
        output += c[-1] * c.chomp.to_i
      end
    end
    output
  end

  def self.runLength(char, input)
    input.chars.take_while {|c| c == char}.size
  end

end