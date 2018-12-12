require_relative("song")
class Guest < Song

attr_reader :name, :money

def initialize(name, money)
@name = name
@money = money
end

def sing(song)
  p "I'm singing #{song}"
end

def entry_fee(customer, fee)
  return @money -= fee
end

end
