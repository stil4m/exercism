module BookKeeping
  VERSION = 3
end

class Raindrops
  def self.convert(input)
    output =
        [input % 3 == 0 ? "Pling" : '',
         input % 5 == 0 ? "Plang" : '',
         input % 7 == 0 ? "Plong" : ''
        ].join("")

    output.empty? ? input.to_s : output
  end
end