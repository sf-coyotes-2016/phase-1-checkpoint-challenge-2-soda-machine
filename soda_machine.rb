class SodaMachine
  attr_reader :sodas, :cash, :inventory

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    # @sodas.each do |soda|
    #   return soda if soda == soda_brand
    # end

    # can't compare object to strings
  end

  def sell(soda_brand)
    # @soda.
  end

end

