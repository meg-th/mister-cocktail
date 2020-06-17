class Cocktail < ApplicationRecord
  has_many :recipe_amounts, dependent: :destroy
  has_many :ingredients, through: :doses
end
