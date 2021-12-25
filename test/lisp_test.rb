require 'minitest/autorun'
require_relative '../day1_lisp/deliver'

class LispTest < Minitest::Test

  def test_floor_0
    assert_equal 0, floor('(())')
  end

  def test_floor_3
    assert_equal (-3), floor(')())())')
  end

  def test_input
    assert_equal 232, floor(File.read('day1_lisp/input.txt').strip)
  end

  def test_basement_one_char
    assert_equal 1, basement(')')
  end

  def test_basement_last_char
    assert_equal 5, basement('()())')
  end

  def test_basement_input
    assert_equal 1783, basement(File.read('day1_lisp/input.txt').strip)
  end

end
