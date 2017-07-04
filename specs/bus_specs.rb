require('minitest/autorun')
require_relative('../bus.rb')
require_relative('../person.rb')

class TestBus < MiniTest::Test


def setup

  @bus1 = Bus.new(22, "Ocean Terminal")
  @bus2 = Bus.new(35, "Edinburgh Airport")

  @person1 = Person.new("Ross", 21)
  @person2 = Person.new("Andrew", 18)
  @person3 = Person.new("Alex", 23)
  @person4 = Person.new("Donald", 60)

end

def test_bus_number
  assert_equal(22, @bus1.route_number)
end

def test_bus_destination
  assert_equal("Edinburgh Airport", @bus2.destination)
end

def test_bus_drive_feature
  assert_equal("Brum Brum", @bus1.drive)
end

def test_number_of_passengers
  passenger_count = @bus1.number_of_passengers
  assert_equal(0, passenger_count)
end


end