class Dog
    attr_accessor = :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        @@all.each_with_index {|dog, i| puts @@all[i].name}
    end

    def save
        self.class.all << self
    end

    def name
        @name
    end
end