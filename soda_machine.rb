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
    p @sodas[:brand]
   #  @sodas.each |i|
   #   if soda_brand == @sodas[:brand]
   #   end
   # end
  end

  def sell(soda_brand)
  end

end

