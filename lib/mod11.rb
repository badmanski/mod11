require 'mod11/version'

class Mod11
  WEIGHT = [2, 3, 4, 5, 6, 7,
            2, 3, 4, 5, 6, 7,
            2, 3, 4, 5, 6, 7]

  attr_accessor :initial_value

  def initialize(initial_value)
    @initial_value = initial_value
  end

  def full_value
    initial_value.to_s + check_digit.to_s
  end

  def check_digit
    sum = 0

    initial_value.to_s.reverse.chars.each_with_index do |char, i|
      sum += char.to_i * WEIGHT[i]
    end

    remainder = sum % 11

    case remainder
    when 0 then remainder
    when 1 then nil
    else 11 - remainder
    end
  end
end
