class Song

  def initialize(name, title)
    @name = name
    @title = title
  end

  def return_song_name()
    return @name
  end

  def return_song_artist()
    return @title
  end

end
