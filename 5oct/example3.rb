class Person
    def initialize(name,email)
        @name=name
        @email=email
    end
    def name=(name)
        @name=name
    end
    def name
        @name
    end
    def get_info
        puts "The get info method"
        puts "#{@name} #{@email}"
    end

    # def setter_info(name,email)
    #     puts "setter method info"
    # end
end


p1=Person.new("harsh","harsh@gmail.com")
# p1.get_info

p1.name=("aditya") #sytactic sugar for setter
p1.get_info
puts p1.name
