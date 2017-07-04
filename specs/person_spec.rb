require('minitest/autorun')
require_relative('../bus.rb')
require_relative('../person.rb')

class TestPerson < MiniTest::Test

  def setup
    @person1 = Person.new("Ross", 21)
    @person2 = Person.new("Andrew", 18)
    @person3 = Person.new("Alex", 23)
    @person4 = Person.new("Donald", 60)
  end

def test_person_name
  assert_equal("Ross", @person1.name)
  assert_equal("Donald", @person4.name)
end

def test_person_age
  assert_equal(21, @person1.age)
  assert_equal(23, @person3.age)
end


end