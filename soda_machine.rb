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
    sodas.find {|soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    soda_bought = sodas.find { |soda| soda.brand == soda_brand }
    if soda_bought != nil
      @cash += soda_bought.price
      sodas.delete(soda_bought)
    else
      return nil
    end
  end
end

