# frozen_string_literal: true

RSpec.describe ObliqueStrategies do
  it 'has a version number' do
    expect(ObliqueStrategies::VERSION).not_to be nil
  end

  it 'has a card() class method for just getting a card' do
    expect(ObliqueStrategies.card).to be_a(String)
  end

  it 'has a card instance method that picks a random card' do
    deck = ObliqueStrategies.new
    expect(deck.card).not_to eq(deck.card)
  end
end
