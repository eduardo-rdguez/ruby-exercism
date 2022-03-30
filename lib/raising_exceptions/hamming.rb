# frozen_string_literal: true

# Hamming exercise
class Hamming
  def self.compute(strand_one, strand_two)
    raise ArgumentError unless strand_one.length == strand_two.length

    differences(strand_one.chars, strand_two.chars).count
  end

  def self.differences(strand_one, strand_two)
    strand_one.zip(strand_two).reject { |a, b| a == b }
  end

  private_class_method :differences
end
