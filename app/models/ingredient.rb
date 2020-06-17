class Ingredient < ApplicationRecord
  has_many :recipe_amounts
  validates :name, presence: true, uniqueness: true
end
