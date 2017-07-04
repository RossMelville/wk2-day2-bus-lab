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

def test_add_passengers_to_bus
  @bus1.pick_up(@person1)
  assert_equal(1, @bus1.number_of_passengers)
end

def test_number_of_passengers__when_none
  passenger_count = @bus1.number_of_passengers
  assert_equal(0, passenger_count)
end

def test_number_of_passengers__with_passengers
  @bus2.pick_up(@person1)
  @bus2.pick_up(@person2)
  @bus2.pick_up(@person4)
  @bus2.pick_up(@person3)
  passenger_count = @bus2.number_of_passengers
  assert_equal(4, passenger_count)
end

def test_drop_off_passenger
  @bus2.pick_up(@person1)
  @bus2.pick_up(@person2)
  @bus2.pick_up(@person4)
  @bus2.pick_up(@person3)
  @bus2.drop_off
  passenger_count = @bus2.number_of_passengers
  assert_equal(3, passenger_count)
end

def test_empty_bus
  @bus2.pick_up(@person1)
  @bus2.pick_up(@person2)
  @bus2.pick_up(@person4)
  @bus2.pick_up(@person3)
  @bus2.empty_bus
  passenger_count = @bus2.number_of_passengers
  assert_equal(0, passenger_count)
end

end