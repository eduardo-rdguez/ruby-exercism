# frozen_string_literal: true

# Matrix exercise
class Matrix
  def initialize(input)
    @input = input
  end

  def rows
    @input.lines.map(&:split).map do |rows|
      rows.map(&:to_i)
    end
  end

  def columns
    rows.transpose
  end
end
