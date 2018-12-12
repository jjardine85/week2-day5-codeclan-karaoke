require_relative("guest.rb")
require_relative("song.rb")

class Room < Guest


attr_accessor :guest, :playlist

def initialize(guest, playlist)
  @guest = guest
  @playlist = playlist
end
#the below initially had no && syntax
#which meant it printed the string "welcome.." but didn't
#add guest to array if the array was full.
#Now it doesn't print the string when guest is checked in
#but is taking the correct action
def check_in(guest1, room)
  if room.length <= 4
    p "welcome, #{guest1}" && room << guest1
  else room.length >= 5
    p "no room, #{guest1}"
  end
end

def check_out(guest, room)
  room.delete_if {|goodbye| goodbye == guest}
end

end
