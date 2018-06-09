module BookKeeping
  VERSION = 2
end

module Romans
  def to_roman_inner(n, x, y, z)

    case n
    when 1
      return "#{x}"
    when 2
      return "#{x}#{x}"
    when 3
      return "#{x}#{x}#{x}"
    when 4
      return "#{x}#{y}"
    when 5
      return "#{y}"
    when 6
      return "#{y}#{x}"
    when 7
      return "#{y}#{x}#{x}"
    when 8
      return "#{y}#{x}#{x}#{x}"
    when 9
      return "#{x}#{z}"
    when 10
      return "#{z}"
    end
    return ''
  end

  def to_roman
    thousands = 'M' * (self / 1000)
    remainder = self % 1000
    hundred_fold = remainder - (remainder % 100)
    ten_fold = remainder - (remainder % 10)

    hundreds = to_roman_inner(hundred_fold / 100, 'C', 'D', 'M')
    tens = to_roman_inner(ten_fold % 100 / 10, 'X', 'L', 'C')
    singles = to_roman_inner(remainder % 10, 'I', 'V', 'X')
    thousands + hundreds + tens + singles
  end
end

class Integer
  include Romans
end