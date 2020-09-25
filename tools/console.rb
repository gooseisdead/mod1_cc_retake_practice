# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end


mirapoix = Recipe.new("Mirapoix", "carrots and celery")
stock = Recipe.new("Chicken Stock", "water and chicken bones")
meatballs = Recipe.new("Meatballs", "meat, egg, and breadcrumbs")
pastry = Recipe.new("Pastry", "milk, flour, and eggs")

bob = RestaurantOwner.new("Bob", 57)
glen = RestaurantOwner.new("Shakes", 29)

bigboy = Restaurant.new(bob, "Bob's Big Boy", 4)
shakeys = Restaurant.new(glen, "Shakey's", 2)

soup = MenuItem.new(bigboy, meatballs, 4.75)
salad = MenuItem.new(bigboy, mirapoix, 3.85)
gravy = MenuItem.new(shakeys, stock, 1.95)
stew = MenuItem.new(shakeys, mirapoix, 2.05)
meatloaf = MenuItem.new(bigboy, stock, 7.50)

soup.owner = bob
salad.owner = bob
gravy.owner = glen

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
