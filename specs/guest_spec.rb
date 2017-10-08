require ("minitest/autorun")
require ("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

  def setup()
    @guest = Guest.new("Kayla", 35)
  end

  def test_can_get_guest_name
    assert_equal("Kayla", @guest.name)
  end

  def test_can_get_guest_cash
    assert_equal(35, @guest.cash)
  end

end
