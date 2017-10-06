class Room

  attr_reader(:number)

  def initialize(number)
    @number = number
    @guests = []
    @songs = []
  end

  def return_number(number)
    return @number
  end

  def number_of_guests()
    return @guests.length()
  end

  def number_of_songs()
    return @songs.length()
  end

  def add_guest(guest)
    @guests.push(guest)
  end

  def add_song(song)
    @songs.push(song)
  end

end
