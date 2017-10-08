require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")


class TestSong < MiniTest::Test

  def setup
    @song = Song.new("Bust a Move", "Young MC")
  end

  def test_can_get_song_name()
    assert_equal("Bust a Move", @song.name)
  end

  def test_can_get_song_artist()
    assert_equal("Young MC", @song.title)
  end

end
