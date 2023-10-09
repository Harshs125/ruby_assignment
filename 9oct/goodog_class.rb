class Animal
    def speak
        puts "hello ! #{self}"
    end
end

# class GoodDog < Animal
# end

class GoodDog < Animal
    attr_accessor :name
    def initialize(n)
        self.name=n
    end

    def speak
        "#{self.name} says arf "
    end
end


class Cat < Animal
end

d=GoodDog.new("Tommy")
c=Cat.new

puts d.speak
c.speak

