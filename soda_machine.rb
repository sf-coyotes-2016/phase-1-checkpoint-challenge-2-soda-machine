class SodaMachine
  attr_reader :sodas, :cash, :list

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @list = args
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    # @sodas.each do |soda|
    #   if list[:soda_brand] = soda
    #   return soda
    #   else nil
    #   end
    # end
    index = 0
    while index < @sodas.count
    list[:soda_brand] = @sodas[index]
    return @sodas[index]
    index += 1
  end
  end

  def sell(soda_brand)
  end

end
