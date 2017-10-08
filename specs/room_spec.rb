require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestRoom < MiniTest::Test

  def setup()
    @room = Room.new(10, 5, 10)
    @room2 = Room.new(2, 0, 8)
    @song = Song.new("Brass in Pocket", "The Pretenders")
    @guest = Guest.new("Andy", 200)
  end

  def test_room_has_number()
    assert_equal(10, @room.number)
  end

  def test_room_starts_with_no_guests()
    actual = @room.number_of_guests()
    assert_equal(0, actual)
  end

  def test_room_starts_with_no_songs()
    actual = @room.number_of_songs()
    assert_equal(0, actual)
  end

  def test_add_guest_to_room()
    @room.add_guest(@guest)
    actual = @room.number_of_guests()
    assert_equal(1, actual)
  end

  def test_add_song_to_room()
    @room.add_song(@song)
    actual = @room.number_of_songs()
    assert_equal(1, actual)
  end

  def test_room_limit_adhered_to()
    actual = @room2.add_guest(@guest)
    expected = "Error - guest would exceed max occupancy of room"
    assert_equal(expected, actual)
  end

  def test_room_has_fee()
    actual = @room.fee()
    expected = 10
    assert_equal(expected, actual)
  end

  def test_room_takes_fee_from_guest()
    # Get fee of the room
    fee = @room.fee()
    # Pass the room fee into the pay() method
    actual = @guest.pay_fee(fee)
    expected = 190
    assert_equal(expected, actual)
  end

end
