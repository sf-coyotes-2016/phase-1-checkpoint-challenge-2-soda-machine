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
    sodas.each do |soda|
      if soda.brand == soda_brand 
        return soda 
      else
        puts "Sorry, that brand is unavailable."
      end
    end
  end
  
  def self.brand
    return self
  end


  def sell(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand 
        sodas.slice!(soda)
      end
    end

  end

end
