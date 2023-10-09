module Walkable
    def walk
        "I'm walking"
    end
end

module Swimmable
    def swim
        "I'm swimming"
    end
end

module Climbable
    def Climb
        "I'm Climbing "
    end
end


class Animal
include Walkable
    def speak
        "Im an animal , and i can speak"
    end
end

puts "Animal method lookup"
puts Animal.ancestors


fido = Animal.new
puts fido.speak
puts fido.walk
puts fido.swim