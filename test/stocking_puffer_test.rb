require 'minitest/autorun'
require_relative '../day4_stocking_puffer/mining'

class StockingPufferTest < Minitest::Test

  def test_example_1
    assert_equal 609043, mine('abcdef')
  end

  def test_example_2
    assert_equal 1048970, mine('pqrstuv')
  end

  def test_input
    assert_equal 117946, mine('ckczppom')
  end
end
