require 'journey'

describe Journey do
  let(:journey) { Journey.new }
  let(:station) { double(:station)}

  describe 'fare method' do
    it 'charges a minimum fare' do
      expect(journey.fare).to eq Journey::MINIMUM_FARE
    end
  end

  describe 'set_exit_station method' do
    it 'sets exit_station' do
      journey.set_exit_station(station)
      expect(journey.exit_station).to eq station
    end
  end

  describe 'set_entry_station method' do
    it 'sets entry_station' do
      journey.set_entry_station(station)
      expect(journey.entry_station).to eq station
    end
  end
end