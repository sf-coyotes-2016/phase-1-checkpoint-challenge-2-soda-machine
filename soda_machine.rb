require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    sodas.length
  end

  def find_soda(soda_brand)
    sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    soda = find_soda(soda_brand)
    unless soda.nil?
      take_out_of_inventory(soda)
      @cash += soda.price
    end
    soda
  end

  def take_out_of_inventory(sold_soda)
    sodas.delete_if { |soda| soda == sold_soda }

  end
end
