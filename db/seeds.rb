require 'open-uri'
require 'json'

Ingredient.delete_all

ingredients = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
ingr = JSON.parse(ingredients)
ingr["drinks"].each do |ingredient|
    Ingredient.create!(name: ingredient['strIngredient1'])
end


