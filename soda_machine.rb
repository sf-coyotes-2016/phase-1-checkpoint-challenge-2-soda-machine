require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash, :inventory_count

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas[0]
  end

  def sell(soda_brand)
  end

end

# pepsi = Soda.new(brand: 'Pepsi', price: 0.65)
# p pepsi.brand
# soda_machine = SodaMachine.new(sodas: [pepsi], cash: 1.00)
# p soda_machine.find_soda('Pepsi')
