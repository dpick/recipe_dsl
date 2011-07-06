class Ingredient
  attr_accessor :amount, :name, :unit

  def initialize(amount, unit, name)
    @amount = amount
    @name = name
    @unit = unit
  end
end
