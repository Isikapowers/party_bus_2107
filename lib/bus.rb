class Bus
  attr_reader :name, :capacity, :passengers

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
  end

  def add_passenger(passenger_name)
    @passengers << passenger_name
  end

  def yell_at_passengers
    name_yell = []
    @passengers.each do |passenger|
      upcased = passenger.upcase
      name_yell << upcased
    end
    name_yell
  end

  def number_of_passengers
    @passengers.length
  end

  def over_capacity?
    if number_of_passengers > @capacity
      return true
    else
      return false
    end
  end

  def kick_out
    @passengers.shift
  end
end
