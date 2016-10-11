class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas] # array of sodas
    @cash = args[:cash] # Float
  end

  def current_inventory_count
    @sodas.size
  end

  def find_soda(soda_brand)
    @sodas.find {|soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    index = @sodas.find_index {|soda| soda.brand == soda_brand}
    return nil if !index
    @cash += @sodas[index].price
    @sodas.delete_at(index)
  end

end
