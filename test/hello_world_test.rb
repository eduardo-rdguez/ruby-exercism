# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/hello_world'

# Test program Hello World
class HelloWorldTest < Minitest::Test
  def test_say_hi
    assert_equal 'Hello, World!', HelloWorld.hello
  end
end
