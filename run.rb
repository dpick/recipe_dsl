#!/usr/bin/env ruby

require 'step'
require 'ingredient'
require 'recipe'

def ingredient(amount, unit, text)
  Recipe.instance.add_ingredient(Ingredient.new(amount, unit, text))
end

def step(position, text)
  Recipe.instance.add_step(Step.new(position, text))
end

load 'recipe.qm'

Recipe.instance.print
