class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end
    def age
        @age
    end
    def bark
        if @age > 3
            return @bark.upcase
        end
        @bark.downcase
    end
    def breed 
        @breed
    end
    def favorite_foods
        @favorite_foods
    end

    def age=(number)
        @age = number
    end

    def favorite_food?(str)
        return @favorite_foods.include?(str.capitalize)
    end
end
