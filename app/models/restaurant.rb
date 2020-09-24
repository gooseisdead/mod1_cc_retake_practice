class Restaurant

    attr_accessor :owner, :name, :star_rating
    attr_reader 

    @@all = []

    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    def self.all
        @@all
    end
end

