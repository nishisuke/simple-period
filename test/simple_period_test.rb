require_relative 'test_helper'

class SimplePeriodTest < Minitest::Test
  def test_1min_to_second
    sec = SimplePeriod.second('1min')
    assert_equal 60, sec
  end

  def test_1h_to_second
    sec = SimplePeriod.second('1h')
    assert_equal 3600, sec
  end

  def test_1d_to_second
    sec = SimplePeriod.second('1d')
    assert_equal 86400, sec
  end

  def test_1w_to_second
    sec = SimplePeriod.second('1w')
    assert_equal 7 * 86400, sec
  end

  def test_1M_to_second
    sec = SimplePeriod.second('1M')
    assert_equal 30 * 86400, sec
  end

  def test_1y_to_second
    sec = SimplePeriod.second('1y')
    assert_equal 365 * 86400, sec
  end
end
