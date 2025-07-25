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

  def test_negative_numbers
    expected_response = 'negative numbers not allowed -1'
    err = assert_raises(Exception) { @calculator.add("-1") }
    assert_equal err.message, expected_response
  end

  def test_add_success
    assert_equal @calculator.add("1"), 1
    assert_equal @calculator.add("1,5"), 6
    assert_equal @calculator.add("//:\n1:2:3:4:5"), 15
    assert_equal @calculator.add("1,2,3\n4"), 10
    assert_equal @calculator.add("//@\n3@4@5"), 12
  end
    
end