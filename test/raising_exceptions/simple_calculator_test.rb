# frozen_string_literal: true

require 'minitest/autorun'
require './lib/raising_exceptions/simple_calculator'

# Test simple calculator
class SimpleCalculatorTest < Minitest::Test
  def test_addition_with
    assert_equal '22 + 25 = 47', SimpleCalculator.calculate(22, 25, '+')
  end

  def test_multiplication
    assert_equal '3 * 21 = 63', SimpleCalculator.calculate(3, 21, '*')
  end

  def test_division
    assert_equal '72 / 9 = 8', SimpleCalculator.calculate(72, 9, '/')
  end

  def test_rescues_division_by_zero_exception
    assert_equal 'Division by zero is not allowed.', SimpleCalculator.calculate(33, 0, '/')
  end

  def test_no_number_first_operand
    assert_raises(ArgumentError) { SimpleCalculator.calculate('1', 2, '+') }
  end

  def test_no_number_second_operand
    assert_raises(ArgumentError) { SimpleCalculator.calculate(1, '2', '+') }
  end

  def test_raises_exception_for_non_valid_operations
    error = SimpleCalculator::UnsupportedOperation
    assert_raises(error) { SimpleCalculator.calculate(1, 2, '**') }
  end

  def test_raises_exception_when_operation_is_nil
    error = SimpleCalculator::UnsupportedOperation
    assert_raises(error) { SimpleCalculator.calculate(1, 2, nil) }
  end

  def test_raises_exception_when_operation_is_an_empty_string
    error = SimpleCalculator::UnsupportedOperation
    assert_raises(error) { SimpleCalculator.calculate(1, 2, '') }
  end
end
