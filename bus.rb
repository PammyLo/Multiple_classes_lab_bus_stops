class Bus

attr_accessor :route_number, :destination, :passengers

def initialize(route_number, destination, passengers=[])
  @route_number = route_number
  @destination = destination
  @passengers = passengers
end

  def bus_noise
    return "Brum brum!"
  end

  def passengers_on_bus
    @passengers.count
  end

  def pick_up(person)
    @passengers.push(person)
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def drop_all_off()
    @passengers.clear
  end

  def pick_up_from_stop(stop)
    for person in stop
    pick_up(person)
    end 
  end

end
