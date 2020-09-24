class RestaurantOwner

    attr_accessor :name, :age, :recipe
    attr_reader 

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @recipe = nil
        @@all << self
    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.select { |diner| diner.owner == self }
    end

    def menu_items
        
        # self.restaurants.map { |own| own.owner }
    end
end