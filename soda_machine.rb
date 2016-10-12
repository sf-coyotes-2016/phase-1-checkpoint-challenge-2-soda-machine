require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash, :sold_soda

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @sold_soda = sold_soda
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    @sold_soda = find_soda(soda_brand)
    if @sold_soda
      @cash += @sold_soda.price
      @sodas.delete(@sold_soda)
    else
      nil
    end
  end

end

# pepsi = Soda.new(brand: 'Pepsi', price: 0.65)
# # p pepsi.brand
# soda_machine = SodaMachine.new(sodas: [pepsi], cash: 1.00)
# # p soda_machine.find_soda('Pepsi')

# p soda_machine.find_soda('Pepsi')
# p soda_machine.cash
