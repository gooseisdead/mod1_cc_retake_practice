class RestaurantOwner

    attr_accessor :name, :age
    attr_reader 

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
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
        
        
end