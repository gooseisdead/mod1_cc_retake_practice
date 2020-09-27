class MenuItem

    attr_accessor :restaurant, :recipe, :price, :owner
    attr_reader 

    @@all = []

    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price.to_f
        @owner = nil
        @@all << self
    end

    def self.all
        @@all
    end

    def self.recipes
        MenuItem.all.map { |item| item.recipe }
    end

    def self.most_expensive_item
        self.all.max_by { |item| item.price }
    end
    
end