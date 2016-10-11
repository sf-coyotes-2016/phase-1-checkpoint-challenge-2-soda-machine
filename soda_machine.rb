class SodaMachine < Soda
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
   @sodas.size

  end

  def find_soda(soda_brand)
    if soda = @sodas.find {|soda| soda.brand == soda_brand}
      return soda
    else nil
    end
  end

  def sell(soda_brand)
    # if @sodas "does not contain this" soda_brand
    # return nil
    # elsif
    return nil if @sodas.find {|soda| soda.brand != soda_brand}
  


  end

end
