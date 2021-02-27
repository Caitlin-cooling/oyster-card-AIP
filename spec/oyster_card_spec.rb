require 'oyster_card'
require 'journey'

describe Oystercard do
  let(:journey) { double(:journey)}
  let(:oyster_card) { Oystercard.new(journey) }
  let(:station) { double(:station)}
  let(:exit_station) { double(:station) }

  describe '#initialize' do
    it 'sets a default balance of 0' do
      expect(oyster_card.balance).to eq Oystercard::DEFAULT_BALANCE
    end
  end

  describe '#top_up' do
    it 'adds money to the card' do
      oyster_card.top_up(10)
      expect(oyster_card.balance).to eq 10
    end

    it 'throws an exeption when too much money is added to the card' do
      expect { oystercard.top_up(120) }.to raise_exception "Exceeded maximum balance of £100"
    end
  end

  describe '#touch_in' do
    it 'sets entry station' do
      allow(journey).to receive(:set_entry_station)
      oyster_card.touch_in(station)
      expect(journey).to have_received(:set_entry_station).with(station)
    end
  end

  describe '#touch_out' do
    before do
      allow(journey).to receive(:fare) { Journey::MINIMUM_FARE }
      allow(journey).to receive(:set_exit_station)
    end

    it 'sets exit station' do
      oyster_card.touch_out(station)
      expect(journey).to have_received(:set_exit_station).with(station)
    end

    it 'deducts journey fare from balance' do
      oyster_card.top_up(15)
      oyster_card.touch_out(exit_station)
      expect(oyster_card.balance).to eq 8
    end
  end
end