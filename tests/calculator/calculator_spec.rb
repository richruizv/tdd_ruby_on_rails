require_relative 'calculator'

RSpec.describe Calculator do

  before do
    @first = 50
    @second = 10
  end
  context 'adding two numbers together' do
    it 'should return the sum of two numbers' do
      result = Calculator.add(@first, @second)
      expect(result).to eq 60
    end
  end

  context 'substracting two numbers together' do
    it 'should return the difference of two numbers' do
      result = Calculator.substract(@first, @second)
      expect(result).to eq 40
    end
  end

  context 'multiplying two numbers together' do
    it 'should return the product of two numbers' do
      result = Calculator.multiply(@first, @second)
      expect(result).to eq 500
    end
  end

  context 'dividing two numbers together' do
    it 'should return the quotient of two numbers' do
      result = Calculator.divide(@first, @second)
      expect(result).to eq 5
    end
  end

  context 'raising one number to the power of the other' do
    it 'should return the first number raised to the power of the other number' do
      result = Calculator.pow(3,3)
      expect(result).to eq 27
    end
  end
end