# frozen_string_literal: true

require 'minitest/autorun'
require './lib/conditionals/assembly_line'

# Test assembly line exercise
class AssemblyLineTest < Minitest::Test
  def test_production_rate_per_hour_for_speed_one
    assembly_line = AssemblyLine.new(1)
    assert_equal 221.0, assembly_line.production_rate_per_hour
  end

  def test_production_rate_per_hour_for_speed_two
    assembly_line = AssemblyLine.new(2)
    assert_equal 442.0, assembly_line.production_rate_per_hour
  end

  def test_production_rate_per_hour_for_speed_three
    assembly_line = AssemblyLine.new(3)
    assert_equal 663.0, assembly_line.production_rate_per_hour
  end

  def test_production_rate_per_hour_for_speed_four
    assembly_line = AssemblyLine.new(4)
    assert_equal 884.0, assembly_line.production_rate_per_hour
  end

  def test_production_rate_per_hour_for_speed_five
    assembly_line = AssemblyLine.new(5)
    assert_equal 994.5, assembly_line.production_rate_per_hour
  end

  def test_production_rate_per_hour_for_speed_six
    assembly_line = AssemblyLine.new(6)
    assert_equal 1193.4, assembly_line.production_rate_per_hour
  end

  def test_production_rate_per_hour_for_speed_seven
    assembly_line = AssemblyLine.new(7)
    assert_equal 1392.3, assembly_line.production_rate_per_hour
  end

  def test_production_rate_per_hour_for_speed_eight
    assembly_line = AssemblyLine.new(8)
    assert_equal 1591.2, assembly_line.production_rate_per_hour
  end

  def test_production_rate_per_hour_for_speed_nine
    assembly_line = AssemblyLine.new(9)
    assert_equal 1591.2, assembly_line.production_rate_per_hour
  end

  def test_production_rate_per_hour_for_speed_ten
    assembly_line = AssemblyLine.new(10)
    assert_equal 1701.7, assembly_line.production_rate_per_hour
  end

  def test_working_items_per_minute_for_speed_one
    assembly_line = AssemblyLine.new(1)
    assert_equal 3, assembly_line.working_items_per_minute
  end

  def test_working_items_per_minute_for_speed_five
    assembly_line = AssemblyLine.new(5)
    assert_equal 16, assembly_line.working_items_per_minute
  end

  def test_working_items_per_minute_for_speed_eight
    assembly_line = AssemblyLine.new(8)
    assert_equal 26, assembly_line.working_items_per_minute
  end

  def test_working_items_per_minute_for_speed_nine
    assembly_line = AssemblyLine.new(9)
    assert_equal 26, assembly_line.working_items_per_minute
  end

  def test_working_items_per_minute_for_speed_ten
    assembly_line = AssemblyLine.new(10)
    assert_equal 28, assembly_line.working_items_per_minute
  end
end
