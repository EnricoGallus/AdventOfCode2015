require 'minitest/autorun'
require_relative '../day3_present_delivery/deliver'

class PresentDeliveryTest < Minitest::Test

  def test_one_move
    assert_equal 2, deliver('>')
  end

  def test_circle
    assert_equal 4, deliver('^>v<')
  end

  def test_up_and_down
    assert_equal 2, deliver('^v^v^v^v^v')
  end

  def test_input
    assert_equal 1586300, deliver(File.read('day3_present_delivery/input.txt').strip)
  end
end
