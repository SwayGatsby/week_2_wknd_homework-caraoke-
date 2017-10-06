class Room

  attr_reader(:number, :max_guests)

  def initialize(number, max_guests)
    @number = number
    @max_guests = max_guests
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
    if (@guests.length + 1) <= @max_guests
      @guests.push(guest)
    else
      return "Error"
    end
  end

  def add_song(song)
    @songs.push(song)
  end

end
