class BusStop

  attr_accessor :queue

  def initialize(queue=[])
    @queue = queue
  end

  def add_person_to_queue(person)
    @queue.push(person)
  end

  def remove_all_from_queue()
    @queue.clear
  end
    
end
