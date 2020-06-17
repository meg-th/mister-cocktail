class Ingredient < ApplicationRecord
  has_many :recipe_amounts
  
end
