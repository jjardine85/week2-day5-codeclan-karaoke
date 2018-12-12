require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../song")
require_relative("../guest")

class RoomTest < Minitest::Test

def setup
  @songs = Song.new(["waterloo", "dancing queen"])

  @customer = Guest.new("Benny", 50)

  @room1 = Room.new(@customer, @songs)
  @room2 = Room.new([], @songs)
  @room3 = Room.new(["matthew", "mark", "luke", "john", "derek"], @songs)
end

def test_get_songs
  assert_equal(["waterloo", "dancing queen"], @songs.songs)
end

def test_get_guest_name
  assert_equal("Benny", @customer.name)
end

def test_can_check_in
  assert_equal(["paul"], @room2.check_in("paul", @room2.guest))
end

def test_cannot_check_in
  assert_equal("no room, paul", @room3.check_in("paul", @room3.guest))
end

def test_can_check_out
  assert_equal(["matthew", "mark", "luke", "john"], @room3.check_out("derek", @room3.guest))
end


end
