class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    sodas.length
  end

  def find_soda(soda_brand)
    sodas.first
    # sodas.find {|i| i }
  end

  def sell(soda_brand)

  end

end

#A soda machine will be able to return the number of
#sodas it contains. This method should be called
#SodaMachine#current_inventory_count.
