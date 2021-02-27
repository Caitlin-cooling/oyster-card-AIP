class Journey
  MINIMUM_FARE = 2

  attr_reader :entry_station, :exit_station

  def fare
    MINIMUM_FARE
  end

  def set_exit_station(station)
    @entry_station = station
  end

  def set_entry_station(station)
    @entry_station = station
  end
end