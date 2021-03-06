# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

url = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list")
file = JSON.parse(url.read)
source = file["drinks"]

source.each do |item|
  Ingredient.create(name: item["strIngredient1"])
end
