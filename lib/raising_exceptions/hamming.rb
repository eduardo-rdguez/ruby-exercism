# frozen_string_literal: true

# Hamming exercise
class Hamming
  def self.compute(strand_one, strand_two)
    raise ArgumentError unless strand_one.length == strand_two.length

    differences(strand_one, strand_two).count
  end

  def self.differences(strand_one, strand_two)
    strand_one.chars.zip(strand_two.chars).reject { |a, b| a == b }
  end

  private_class_method :differences
end
