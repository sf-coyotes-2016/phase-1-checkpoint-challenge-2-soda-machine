require_relative 'soda'

class SodaMachine < Soda
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    sodas.length
  end

  def find_soda(soda_brand)
    sodas.find{|brand| brand = soda_brand}

    

# soda is initiated in Soda class 
# takes in brand and price 
# we need to iterate through the brands to find the soda brand


  end

  def sell(soda_brand)

  end

end
