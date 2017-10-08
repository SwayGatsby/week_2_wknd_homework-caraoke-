class Room

attr_reader(:number, :max_guests, :guests, :songs, :fee)

  def initialize(number, max_guests, fee_pp)
    @number = number
    @max_guests = max_guests
    @guests = []
    @songs = []
    @fee = fee_pp
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
      return "Error - guest would exceed max occupancy of room"
    end
  end

  def add_song(song)
    @songs.push(song)
  end

  def max_number_of_guests()
    return @max_guests
  end


end
