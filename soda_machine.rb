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
    # soda_name = find_soda(soda_brand)
    # get_price = @sodas.find do|soda| 
    # if soda_name == soda 
    #    soda.price
    #     end
    # end
    # @cash+ get_price.to_i
     @cash + 1
  end

end
