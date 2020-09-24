class Recipe

    attr_accessor :description
    attr_reader :name

    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select { |item| item.recipe == self }
    end

    def restaurants
        self.menu_items.map{ |diner| diner.restaurant }
    end

    


end

