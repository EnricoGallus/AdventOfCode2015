require 'minitest/autorun'
require_relative '../day2_wrapping/area'

class WrappingTest < Minitest::Test

  def test_area_first_example
    assert_equal 58, area('2x3x4')
  end

  def test_area_second_example
    assert_equal 43, area('1x1x10')
  end

  def test_area_input
    assert_equal 1586300, area_all('day2_wrapping/input.txt')
  end

  def test_ribbon_first_example
    assert_equal 34, ribbon('2x3x4')
  end

  def test_ribbon_second_example
    assert_equal 14, ribbon('1x1x10')
  end

  def test_ribbon_input
    assert_equal 3737498, ribbon_all('day2_wrapping/input.txt')
  end
end
