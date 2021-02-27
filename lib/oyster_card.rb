class Oystercard
  DEFAULT_BALANCE = 0

  attr_reader :balance, :journey

  def initialize(journey)
    @balance = DEFAULT_BALANCE
    @journey = journey
  end

  def top_up(amount)
    @balance += amount
  end

  def touch_in(station)
    @journey.set_entry_station(station)
  end

  def touch_out(station)
    @journey.set_exit_station(station)
    @balance += @journey.fare
  end
end