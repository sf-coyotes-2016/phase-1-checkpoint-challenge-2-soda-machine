class SodaMachine < Soda
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count

    p @sodas.length


    # if @sodas >= 1
    #   true
    #   p @soda.length
    # else
    #   false
    #   p "There are no sodas in the machine!"
    # end
  end

  def find_soda(soda_brand)
    # A soda machine will be able to find a single soda with a given brand. This method will be called SodaMachine#find_soda.


    if @sodas.include?(soda_brand)
      p soda_brand
    # else
    #   p "No #{soda_brand} available"
    end

  end

  def sell(soda_brand)
    # A soda machine will be able to sell a soda with a given brand. When a soda is sold, it should be removed from the soda machine and the price of the soda should be added to the soda machine's cash This method will be called SodaMachine#sell.

# @sodas.detect { |soda_brand| soda_brand}

    @sodas.delete_if { |soda_brand| soda_brand }
    @cash << 

  end

end






