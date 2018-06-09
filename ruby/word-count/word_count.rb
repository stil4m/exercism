module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    Hash[@phrase
             .downcase
             .split(/[^a-z0-9']+/)
             .map {|n| n =~ /^'.*'/ ? n.chop.reverse.chop.reverse : n}
             .select {|v| not v.empty?}
             .group_by {|k, _| k}
             .map {|k, v| [k, v.size]}]
  end
end