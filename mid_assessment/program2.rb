module School
    def get_level()
        case @grade
        when 1..5
            "#{@name} is in Elementary School with #{@grade}"
        when 6..8
            "#{@name} is in Middle School with #{@grade}"
        when 9..12
            "#{@name} is in High School with #{@grade}"
        else
            "#{@name} is in College with #{@grade}"
        end
    end
end

class Student 
include School
attr_accessor :name,:grade
def initialize(name,grade)
    @name=name
    @grade=grade
    end
end



student1=Student.new("harsh",14)
student2=Student.new("Aditya",9)
student3=Student.new("Himanshu",7)

puts student1.get_level
puts student2.get_level
puts student3.get_level



