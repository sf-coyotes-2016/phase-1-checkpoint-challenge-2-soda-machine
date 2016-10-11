class Soda
  attr_reader :brand, :price

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
  end
end

pepsi = Soda.new(brand: 'Pepsi', price: 0.65, age: 1)
p pepsi.brand
p pepsi.price