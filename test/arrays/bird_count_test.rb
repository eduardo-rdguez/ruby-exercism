# frozen_string_literal: true

require 'minitest/autorun'
require './lib/arrays/bird_count'

# Test bird count exercise
class BirdCountTest < Minitest::Test
  def test_last_week
    array = [0, 2, 5, 3, 7, 8, 4]
    assert_equal array, BirdCount.last_week
  end

  def test_yesterday_for_disappointing_week
    array = [0, 0, 1, 0, 0, 1, 0]
    assert_equal 1, BirdCount.new(array).yesterday
  end

  def test_yesterday_for_busy_week
    array = [8, 8, 9, 5, 4, 7, 10]
    assert_equal 7, BirdCount.new(array).yesterday
  end

  def test_total_disappointing_week
    array = [0, 0, 1, 0, 0, 1, 0]
    assert_equal 2, BirdCount.new(array).total
  end

  def test_total_for_busy_week
    array = [5, 9, 12, 6, 8, 8, 17]
    assert_equal 65, BirdCount.new(array).total
  end

  def test_days_for_disappointing_week
    array = [1, 1, 1, 0, 0, 0, 0]
    assert_equal 0, BirdCount.new(array).busy_days
  end

  def test_busy_days_for_busy_week
    array = [4, 9, 5, 7, 8, 8, 2]
    assert_equal 5, BirdCount.new(array).busy_days
  end

  def test_has_day_without_birds
    array = [5, 5, 4, 0, 7, 6]
    assert BirdCount.new(array).day_without_birds?
  end

  def test_has_day_without_birds_whith_no_day_without_birds
    array = [4, 5, 9, 10, 9, 4, 3]
    refute BirdCount.new(array).day_without_birds?
  end
end
