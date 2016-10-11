require 'soda'

class SodaMachine < Soda
  attr_accessor :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    # soda_machine = ["pepsi", "mountain_dew", "coke_zero", "second_pepsi"]
    # soda_machine.count 
    @sodas.keys.count
  end

  def find_soda(soda_brand)

    #.find on the sodas array to find specific brand
    #.pop to remove first 
    @sodas.find(soda_brand).pop
    @sodas.keys.pop

  end

  def sell(soda_brand)
    return nil if @sodas.find(soda_brand) == 0 
    else

     @sodas.find(soda_brand) 

  end

end
