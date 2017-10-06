require ("minitest/autorun")
require ("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

def setup()
@guest = Guest.new("Kayla")
end

def test_can_get_guest_name
actual = @guest.get_name()
assert_equal("Kayla", actual)
end


end
