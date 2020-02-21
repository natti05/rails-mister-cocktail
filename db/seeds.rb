require 'open-uri'
require 'JSON'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drinks = open(url).read
drink = JSON.parse(drinks)
drink['drinks'].each do |hash|
  INGREDIENT_NAME = Ingredient.create!(name: hash['strIngredient1'])
end

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
article = Article.new(title: 'NES', body: "A great console")
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
