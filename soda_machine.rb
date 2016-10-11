class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas
  end

  def find_soda(soda_brand)
  end

  def sell(soda_brand)
  end

end

let (:pepsi) { Soda.new(brand: 'Pepsi', price: 0.65) }
let (:mountain_dew) { Soda.new(brand: 'Mountain Dew', price: 0.75) }
let (:coke_zero) { Soda.new(brand: 'Coke Zero', price: 1.00) }
let (:second_pepsi) { Soda.new(brand: 'Pepsi', price: 0.65) }

let(:soda_machine) { SodaMachine.new(sodas: [pepsi, mountain_dew, coke_zero, second_pepsi], cash: 1.00) }

p soda_machine.current_inventory_count