require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../bus')
require_relative ('../person')

class BusTest < Minitest::Test

  def setup()

    @bus_1 = Bus.new(51, "New York")

    @passenger_1 = Person.new("Jack", 24)
    @passenger_2 = Person.new("Jill", 21)
    @passenger_3 = Person.new("Rachel", 6)

  end

  def test_bus_noise
    assert_equal("Brum brum!", @bus_1.bus_noise)
  end

  def test_are_passengers_on_bus
    @bus_1.passengers_on_bus
    assert_equal(0, @bus_1.passengers.count)
  end

  def test_add_person_to_passengers
    @bus_1.pick_up(@passenger_1)
    assert_equal(1, @bus_1.passengers_on_bus)
  end

  def test_remove_passenger
    @bus_1.pick_up(@passengers)
    @bus_1.pick_up(@passenger_2)
    @bus_1.pick_up(@passenger_3)
    @bus_1.drop_off(@passenger_2)
    assert_equal(2, @bus_1.passengers_on_bus)
  end

  def test_remove_all_passengers
    @bus_1.pick_up(@passenger_1)
    @bus_1.pick_up(@passenger_2)
    @bus_1.pick_up(@passenger_3)
    @bus_1.drop_all_off()
    assert_equal(0, @bus_1.passengers_on_bus)
  end

end
