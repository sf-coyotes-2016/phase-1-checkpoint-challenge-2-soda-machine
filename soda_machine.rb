require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.each do |soda| 
      if soda_brand == @sodas(soda.brand)
        return soda
      end
    end
  end

  def sell(soda_brand)

  end

end

# pepsi = Soda.new({brand: "Pepsi", price: 1.00})
# p pepsi.brand