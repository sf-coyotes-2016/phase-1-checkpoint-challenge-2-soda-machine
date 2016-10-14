class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    chosen_soda = find_soda(soda_brand)
    if chosen_soda == nil
      nil
    else
      @cash += chosen_soda.price
    end
    @sodas.delete(chosen_soda)
  end

end













# class SodaMachine
#   attr_reader :sodas, :cash

#   def initialize(args = {})
#     @sodas = args[:sodas]
#     @cash = args[:cash]
#   end

#   def current_inventory_count
#     self.sodas.length
#   end

#   def find_soda(soda_brand)
#     self.sodas.include?(soda_brand) ? self.sodas.include?(soda_brand) : nil
#   end

#   def sell(soda_brand)
#     self.sodas.shift(soda_brand)
#   end

# end

