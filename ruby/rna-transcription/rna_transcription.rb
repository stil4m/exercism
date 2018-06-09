module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna (input)
    return '' if input =~ /[^GCAT]/

    input.chars.map do |char|
      case char
      when /G/
        "C"
      when /C/
        "G"
      when /A/
        "U"
      when /T/
        "A"
      end
    end.join("")
  end
end