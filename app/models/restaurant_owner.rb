class RestaurantOwner

    attr_accessor :name, :age, :restaurant
    attr_reader 

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @restaurant = nil
        @@all << self
    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.select { |diner| diner.owner == self }
    end

    def menu_items
        MenuItem.all.select { |item| item.owner == self}
    end

    def self.average_age
        RestaurantOwner.all.map { |own| own.age.to_i }.sum / self.all.count
    end

    def sell_restaurant(restaurant, buyer)
        
    end
end
        