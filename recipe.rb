require 'singleton'

class Recipe
  include Singleton

  def initialize
    @steps, @ingredients = [], []
  end

  def add_step(step)
    @steps << step
  end

  def add_ingredient(ingredient)
    @ingredients << ingredient
  end

  def print
    @ingredients.each do |ingredient|
      puts "#{ingredient.amount} #{ingredient.unit} #{ingredient.name}"
    end

    puts ""

    @steps.sort { |x, y| x.position <=> y.position }.each do |step|
      puts "#{step.position}. #{step.text}"
    end
  end
end
