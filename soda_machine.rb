require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash, :sold_soda

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.each do |soda|
       return soda if soda.brand == soda_brand
     end
    return nil
  end


  def sell(soda_brand)
    @sodas.each do |soda|
       if soda.brand == soda_brand
        @cash += soda.price
        @sold_soda = soda
        @sodas.delete(soda)
       end
     end
    @sold_soda
  end

end
