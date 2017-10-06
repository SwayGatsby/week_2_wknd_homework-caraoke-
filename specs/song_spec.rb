require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")


class TestSong < MiniTest::Test

  def setup
    @song = Song.new("Bust a Move", "Young MC")
  end

  def test_can_get_song_name()
    actual = @song.return_song_name
    assert_equal("Bust a Move", actual)
  end

  def test_can_get_song_artist()
    actual = @song.return_song_artist
    assert_equal("Young MC", actual)
  end

end
