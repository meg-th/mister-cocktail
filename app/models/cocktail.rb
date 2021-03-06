class Cocktail < ApplicationRecord
  has_many :recipe_amounts, dependent: :destroy
  has_many :ingredients, through: :recipe_amounts

  has_one_attached :photo
end
