require_relative("guest.rb")
require_relative("room.rb")
require_relative("song.rb")

guest = Guest.new("John", 20)
guest1 = Guest.new("Dave", 10)
guest2 = Guest.new("Brian", 25)
guest3 = Guest.new("Jeremy", 55)
guest4 = Guest.new("Denied", 100)
guest5 = Guest.new("not denied", 1000)
guest6 = Guest.new("please deny me", 10000)


songs = Song.new(["delilah", "lola"])
songs1 = Song.new("new song")

main_room = Room.new([guest, guest1, guest2, guest3], songs)
main_room1 = Room.new([guest1], songs1)

p main_room1

guest1.sing(songs.songs[1])
# p "*** below is first p main_room, expecting four guests and some songs"
# # p main_room
#
# main_room.check_in(guest4.name, main_room.guest)
#
# main_room1.check_in(guest2.name, main_room.guest)
#
# main_room.check_out(guest2, main_room.guest)
#
# p "****** below is second p main room after checkout"
# p main_room
