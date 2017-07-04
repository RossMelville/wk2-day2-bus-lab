require('minitest/autorun')
require_relative('../bus.rb')
# require_relative('../person.rb')

class TestBus < MiniTest::Test


def setup

  @bus1 = Bus.new(22, "Ocean Terminal")
  @bus2 = Bus.new(35, "Edinburgh Airport")

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



end