require 'station'

describe Station do
  let(:name) { "Farringdon" }
  let(:zone) { 1 }
  let(:station) { Station.new(name, zone) }

  context '#initialize' do
    it 'has a name' do
      expect(station.name).to eq name
    end

    it 'has a zone' do
      expect(station.zone).to eq zone
    end
  end
end