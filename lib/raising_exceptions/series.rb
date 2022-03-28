# frozen_string_literal: true

# Series exercise
class Series
  attr_reader :serie

  def initialize(string_of_numbers)
    @serie = string_of_numbers.chars
  end

  def slices(number)
    raise ArgumentError if validate_length?(number)

    serie.each_cons(number).map(&:join).to_a
  end

  def validate_length?(number)
    number > serie.length
  end
end
