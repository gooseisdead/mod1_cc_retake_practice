class Restaurant

    attr_accessor :owner, :name, :star_rating
    attr_reader 

    @@all = []

    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating.to_i
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select { |item| item.restaurant == self }
    end

    def recipes 
        self.menu_items.map { |item| item.recipe }
    end

    def has_dish?(recipe)
        
        
    end

    def self.highest_rated
        self.all.max_by { |diner| diner.star_rating }
    end



end

