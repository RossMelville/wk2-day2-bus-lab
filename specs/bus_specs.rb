require('minitest/autorun')
require_relative('../bus.rb')
require_relative('../person.rb')

class TestBus < MiniTest::Test


def setup

  @bus1 = Bus.new(22, "Ocean Terminal")
  @bus2 = Bus.new(35, "Edinburgh Airport")

end

