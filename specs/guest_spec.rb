require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../song")

class GuestTest < Minitest::Test

  def setup
    @customer1 = Guest.new("Bjorn", 50)
    @some_songs = Song.new(["tragedy", "staying alive"])
    @one_song = Song.new("a song")

  end

  def test_get_guest_name
    assert_equal("Bjorn", @customer1.name)
  end

  def test_get_money
    assert_equal(50, @customer1.money)
  end

  def test_guest_can_sing
    assert_equal("I'm singing tragedy", @customer1.sing("tragedy"))
  end
#test below is redundant because songs should normally be array, but this helped me get my syntax correct for the next test
  def test_guest_can_also_sing_from_string
    assert_equal("I'm singing a song", @customer1.sing(@one_song.songs))
  end

  def test_guest_can_sing_from_array
    assert_equal("I'm singing staying alive", @customer1.sing(@some_songs.songs[1]))
  end

  def test_entry_fee
  assert_equal(45, @customer1.entry_fee("Benny", 5))
  end
end
