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
     @sodas.find {|soda| soda_brand == soda.brand}
  end

  def sell(soda_brand)
    soda_name = find_soda(soda_brand)
    @sodas.delete(soda_name)
  end

  def cash
    @cash + 1
  end

end
