require("minitest/autorun")
require("minitest/rg")
require_relative("../song")

class SongTest < Minitest::Test
def setup
  @playlist1 = Song.new(["waterloo", "dancing queen"])
  @playlist2 = Song.new(["Help", "Yesterday", "I am the walrus"])
end

def test_playlist1_works
  assert_equal(["waterloo", "dancing queen"], @playlist1.songs)
end

def test_playlist2_works
  assert_equal(["Help", "Yesterday", "I am the walrus"], @playlist2.songs)
end

def test_playlist_song
  assert_equal("Help", @playlist2.songs[0])
end

end
