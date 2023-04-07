require_relative 'card'

RSpec.describe Card do
  before do
    suit = 'Diamonds'
    rank = '8'

    @card = Card.new(suit, rank)
  end

  it 'responds to suit' do
    expect(@card).to respond_to(:suit)
  end

  it 'responds to rank' do
    expect(@card).to respond_to(:rank)
  end

  it 'responds to show' do
    expect(@card).to respond_to(:show)
  end
  
  it '"show" method returns true' do
    expect(@card.show).to eq(true)
  end

  it '"suit" method returns "Diamonds"' do
    expect(@card.suit).to eq('Diamonds')
  end

  it '"rank" method returns "8"' do
    expect(@card.rank).to eq('8')
  end

  context 'when suit is invalid' do
    it 'raises an error' do
      expect { Card.new('Hearts', 'Hearts') }.to raise_error(ArgumentError)
    end
  end

  it 'outputs rank and suit if "show" is true' do
    expect(@card.to_s).to eq('8 of Diamonds')
  end

  it 'does not output rank and suit if "show" is false' do
    @card.show = false
    expect(@card.to_s).to eq('Card is face down')
  end
end