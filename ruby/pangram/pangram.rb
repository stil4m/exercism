module BookKeeping
  VERSION = 6
end
class Pangram
  def self.pangram?(phrase)
    'abcdefghijklmnopqrstuvwxyz'.chars.all? {|c| phrase.downcase.include? c}
  end
end