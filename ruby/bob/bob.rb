module BookKeeping
  VERSION = 2
end

class Bob
  def self.hey(input)
    input.strip!
    return "Fine. Be that way!" if input.empty?
    return "Calm down, I know what I'm doing!" if isShout(input) && isQuestion(input)
    return "Whoa, chill out!" if isShout(input)
    return "Sure." if isQuestion(input)
    "Whatever."
  end

  def self.isShout(input)
    input.upcase == input && input.downcase != input
  end

  def self.isQuestion(input)
    input[-1] == '?'
  end
end