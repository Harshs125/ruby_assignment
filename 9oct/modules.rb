module Swimmable
    def swim 
        puts "I'm Swimmable"
    end
end


class Animal
end

class Fish < Animal
include Swimmable
end


class Mammal < Animal
end

class Dog < Mammal
include Swimmable
end

class Cat < Mammal
end



bruno = Dog.new()
paw = Cat.new()
neemo = Fish.new()

bruno.swim()
neemo.swim()
paw.swim()

