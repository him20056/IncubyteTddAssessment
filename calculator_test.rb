require 'minitest/autorun'
require_relative 'calculator'

class CalculatorTest < Minitest::Test

  def setup
    @calculator = Calculator.new
  end

  def test_blank_string
    expected_response = 0
    response = @calculator.add("")
    assert_equal response, expected_response
  end
    
end