require 'open-uri'
require 'JSON'

puts "destroy INGREDIENT"
Ingredient.destroy_all

puts "INGREDIENT destroyed"
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drinks = open(url).read
drink = JSON.parse(drinks)
drink['drinks'].each do |hash|
  INGREDIENT_NAME = Ingredient.create!(name: hash['strIngredient1'])
end

puts "finished"
