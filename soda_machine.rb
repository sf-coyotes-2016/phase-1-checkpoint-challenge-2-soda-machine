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
    soda_found = @sodas.find {|soda| soda.brand == soda_brand}
  end


  def sell(soda_brand)
    soda_found = @sodas.find {|soda| soda.brand == soda_brand}
    @cash += soda_found.price unless soda_found == nil
    soda_sold = @sodas.delete(soda_found)
  end

end
