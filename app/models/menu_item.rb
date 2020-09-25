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

    
end