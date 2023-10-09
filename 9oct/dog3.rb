class Animal
    attr_accessor :name
    def initialize(name)
        @name=name
        puts "#{@name}"
    end
end


class Dog < Animal
    def initialize(color)
        super
        @color = color 
        puts "#{@color}"

    end
end


# bruno = Dog.new("Brown")

# puts bruno.speak


class Dog2 < Animal
    def initialize(name,color)
        super(name)
        @color=color
        puts "#{@color}"
    end
end


bruno = Dog2.new("Bruno","Brown")
