# require 'open-uri'
# require 'JSON'
puts "destroy INGREDIENT"
Ingredient.destroy_all
# Cocktail.destroy_all
puts "INGREDIENT destroyed"
# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# drinks = open(url).read
# drink = JSON.parse(drinks)
# drink['drinks'].each do |hash|
#   INGREDIENT_NAME = Ingredient.create!(name: hash['strIngredient1'])
# end
# puts "finished"

puts "creating ingredient..."
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "cola")
Ingredient.create(name: "vodka")
Ingredient.create(name: "gin")
Ingredient.create(name: "wisky")
Ingredient.create(name: "orange")
Ingredient.create(name: "water")
Ingredient.create(name: "strawberry")
Ingredient.create(name: "red berry")
Ingredient.create(name: "sparkling water")
Ingredient.create(name: "apple juice")
Ingredient.create(name: "orange juice")
Ingredient.create(name: "beer")
Ingredient.create(name: "red wine")
Ingredient.create(name: "white milk")
Ingredient.create(name: "tomato juice")
Ingredient.create(name: "ginger ale")

puts "finished"

