class SodaMachine 
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    return @sodas.length
  end

  def find_soda(soda_brand)
    self.
  end

  def sell(soda_brand)
  end

end
