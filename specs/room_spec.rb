require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestRoom < MiniTest::Test

  def setup()
    @room = Room.new(1)
    @song = Song.new("Brass in Pocket", "The Pretenders")
    @guest = Guest.new("Andy")
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


end
