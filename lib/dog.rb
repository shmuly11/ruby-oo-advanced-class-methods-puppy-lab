require 'pry'
class Dog
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.print_all
       # binding.pry
      puts self.all.map(&:name)
    end

    def self.clear_all
        self.all.clear
    end

    def save
        @@all << self
    end

end

#binding.pry
0