# frozen_string_literal: true

# Simple calculator exercise
class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  UNSUPPORTED_OPERATION_ERROR_MESSAGE = 'UnsupportedOperation'
  ZERO_DIVISION_ERROR_MESSAGE = 'Division by zero is not allowed.'

  class UnsupportedOperation < StandardError
    UNSUPPORTED_OPERATION_ERROR_MESSAGE
  end

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless self.validate_operation?(operation)
    raise ArgumentError unless self.validate_operands?(first_operand, second_operand)

    evaluate_operation(first_operand, second_operand, operation)
  end

  def self.validate_operation?(operation)
    ALLOWED_OPERATIONS.include?(operation)
  end

  def self.validate_operands?(first_operand, second_operand)
    first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)
  end

  def self.evaluate_operation(first_operand, second_operand, operation)
    begin
      result = first_operand.public_send(operation, second_operand)
      return "#{first_operand} #{operation} #{second_operand} = #{result}"
    rescue
      return ZERO_DIVISION_ERROR_MESSAGE
    end
  end
end