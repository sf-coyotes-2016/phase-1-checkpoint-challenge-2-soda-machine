class SodaMachine 
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
   @sodas.size
  end

  def find_soda(soda_brand)
    @sodas.find {|soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    if sold_soda = find_soda(soda_brand)
    @cash += sold_soda.price 
    @sodas.delete(sold_soda)
    else nil
    end
  end
end
