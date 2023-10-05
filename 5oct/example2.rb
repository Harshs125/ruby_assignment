class Person
    def setter_name(name)
        puts "the setter method to set the name of person called"
        @name=name
    end

    def getter_name
        puts "the getter method to get the name of person called"
        @name
    end
end

p1=Person.new
p1.setter_name("harsh")
puts p1.getter_name


class Person2 
    def initialize(name)
        @name=name
    end
    
    def getter_name
        puts "the getter method to get the name of person called"
        @name
    end
end
p2=Person2.new("yogesh")
puts p2.getter_name