require_relative 'product'

RSpec.describe Product do
  before(:all) do
    @p1 = Product.new({id: 1, name: 'Item1', quantity: 3, price: 25})
  end

  # test to ensure getter are working
  it 'responds to id' do
    expect(@p1).to respond_to(:id)
  end

  it 'responds to name' do
    expect(@p1).to respond_to(:name)
  end

  it 'responds to quantity' do
    expect(@p1).to respond_to(:quantity)
  end

  it 'responds to price' do
    expect(@p1).to respond_to(:price)
  end

  it 'returns correct attributes' do
    expect(@p1.id).to eq 1
    expect(@p1.name).to eq 'Item1'
    expect(@p1.quantity).to eq 3
    expect(@p1.price).to eq 25
  end

   it 'returns the list of all products' do
      expect(Product.all).to eq([@p1])
   end

   it 'returns list of product names' do
      expect(Product.product_names).to eq(['Item1'])
   end
  
   it 'returns the list of sold out products' do
      p2 = Product.new({id: 2, name: 'Item2', quantity: 5, price: 15})
      p3 = Product.new({id: 3, name: 'Item3', quantity: 0, price: 30})

      expect(Product.products_to_order).to eq([p3])
   end

   it 'return the total inventory value' do
    p2 = Product.new({id: 2, name: 'Item2', quantity: 5, price: 15})
    p3 = Product.new({id: 3, name: 'Item3', quantity: 0, price: 30})

    expect(Product.inventory).to eq(225)
  end
end