# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'
Ingredient.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
parse = JSON.parse(open(url).read)
parse["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

Cocktail.create(name: "Mojito")
Cocktail.create(name: "Bloody Mary")
Cocktail.create(name: "Sex on the Beach")
Cocktail.create(name: "Margarita")
Cocktail.create(name: "Pinacolada")

Dose.create(description: "2 cl", cocktail_id: 1, ingredient_id: 1)
Dose.create(description: "2 cl", cocktail_id: 1, ingredient_id: 2)
Dose.create(description: "2 cl", cocktail_id: 1, ingredient_id: 3)
Dose.create(description: "2 cl", cocktail_id: 1, ingredient_id: 4)
Dose.create(description: "2 cl", cocktail_id: 1, ingredient_id: 5)
Dose.create(description: "2 cl", cocktail_id: 1, ingredient_id: 6)
Dose.create(description: "2 cl", cocktail_id: 2, ingredient_id: 7)
Dose.create(description: "2 cl", cocktail_id: 2, ingredient_id: 8)
Dose.create(description: "2 cl", cocktail_id: 2, ingredient_id: 9)
Dose.create(description: "2 cl", cocktail_id: 2, ingredient_id: 10)
Dose.create(description: "2 cl", cocktail_id: 2, ingredient_id: 11)
Dose.create(description: "2 cl", cocktail_id: 2, ingredient_id: 12)
Dose.create(description: "2 cl", cocktail_id: 2, ingredient_id: 13)
Dose.create(description: "2 cl", cocktail_id: 2, ingredient_id: 14)

