require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../bus_stop')
require_relative ('../person')
require_relative ('../bus')

class BusStopTest < MiniTest::Test

  def setup()

    @bus_stop_1 = BusStop.new([])

    @bus_1 = Bus.new(21, "Madrid", [])

    @person_1 = Person.new("Johanna", 36)
    @person_2 = Person.new("George", 26)
    @person_3 = Person.new("Joan", 42)

  end

  def test_add_person_to_queue
    @bus_stop_1.add_person_to_queue(@person_1)
    assert_equal(1, @bus_stop_1.queue.count)
  end

  def test_collect_all_from_queue
    @bus_stop_1.add_person_to_queue(@person_1)
    @bus_stop_1.add_person_to_queue(@person_2)
    @bus_stop_1.add_person_to_queue(@person_3)

    @bus_1.pick_up_from_stop(@bus_stop_1.queue)
    @bus_stop_1.remove_all_from_queue()

    assert_equal(0, @bus_stop_1.queue.count)
    assert_equal(3, @bus_1.passengers.count)
  end

end
