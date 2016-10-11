class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    #count of each element\object in the sodas array 
    sodas.count
  end

  def find_soda(soda_brand)
    #use enumerable find method which will return nil if no soda is found
    sodas.find { |soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    # use method above which will return a found soda object
    # if found, add object's price to the cash array
    # delete the soda object from the sodas array
    found_soda = find_soda(soda_brand)
    if found_soda
      @cash += found_soda.price
      sodas.delete(found_soda)
    end
  end

end
