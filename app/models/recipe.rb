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

    def average_price
        self.menu_items.map { |item| item.price }.sum / self.menu_items.count
    end

    def highest_price
        self.menu_items.map { |item| item.price.to_i }.max
    end

    def cheapest_price
        self.menu_items.min_by { |item| item.price }
    end

    def self.inactive
        inactive_instance = MenuItem.all.each do |item|
            if !item.incude?(self.recipe)
            end
        end

    end
    

end

