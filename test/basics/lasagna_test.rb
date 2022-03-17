# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/basics/lasagna'

# Test Lasagna exercise
class LasagnaTest < MiniTest::TestCase
  def test_expected_minutes_in_oven
    assert_equal 40, Lasagna::EXPECTED_MINUTES_IN_OVEN
  end

  def remaining_minutes_in_oven
    lasagna = Lasagna.new
    assert_equal 40, lasagna.remaining_minutes_in_oven
  end

  def preparation_time_in_minutes_with_one_layer
    lasagna = Lasagna.new
    assert_equal 2, lasagna.preparation_time_in_minutes(1)
  end

  def preparation_time_in_minutes_with_multiple_layers
    lasagna = Lasagna.new
    assert_equal 8, lasagna.preparation_time_in_minutes(4)
  end

  def total_time_in_minutes_for_one_layer
    lasagna = Lasagna.new
    assert_equal 32, lasagna.total_time_in_minutes(1, 30)
  end

  def total_time_in_minutes_for_multiple_layer
    lasagna = Lasagna.new
    assert_equal 16, lasagna.total_time_in_minutes(4, 8)
  end
end
