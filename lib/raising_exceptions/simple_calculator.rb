# frozen_string_literal: true

# Simple calculator exercise
class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  UNSUPPORTED_OPERATION_ERROR_MESSAGE = 'UnsupportedOperation'
  ARGUMENT_ERROR_MESSAGE = 'Argument is not Numeric'
  DIVISION_BY_ZERO_ERROR_MESSAGE = 'Division by zero is not allowed.'

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    self.validate_operands(first_operand, second_operand)
    if self.validate_operation?(operation)
      result = evaluate_operation(first_operand, second_operand, operation)
      return self.message(first_operand, second_operand, operation, result)
    else
      raise UnsupportedOperation.new(UNSUPPORTED_OPERATION_ERROR_MESSAGE)
    end
  end

  def self.validate_operands(first_operand, second_operand)
    no_number_first_operand = !first_operand.is_a?(Numeric)
    no_number_second_operand = !second_operand.is_a?(Numeric)

    if (no_number_first_operand || no_number_second_operand)
      raise ArgumentError.new(ARGUMENT_ERROR_MESSAGE)
    end
  end

  def self.validate_operation?(operation)
    ALLOWED_OPERATIONS.include?(operation)
  end

  def self.evaluate_operation(first_operand, second_operand, operation)
    case operation
      when ALLOWED_OPERATIONS[0]
        self.add_operation(first_operand, second_operand)
      when ALLOWED_OPERATIONS[1]
        self.division_operation(first_operand, second_operand)
      when ALLOWED_OPERATIONS[2]
        self.multiply_operation(first_operand, second_operand)
    end
  end

  def self.add_operation(first_operand, second_operand)
    first_operand + second_operand
  end

  def self.multiply_operation(first_operand, second_operand)
    first_operand * second_operand
  end

  def self.division_operation(first_operand, second_operand)
    begin
      first_operand / second_operand
    rescue
      DIVISION_BY_ZERO_ERROR_MESSAGE
    end
  end 

  def self.message(first_operand, second_operand, operation, result)
    if result.is_a?(Numeric)
      "#{first_operand} #{operation} #{second_operand} = #{result}"
    else
      result
    end
  end
end