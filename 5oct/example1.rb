class Demo
    def method
        puts "defination 1 of method"
    end
    def method
        puts "same method with another defination"
    end
end

obj1=Demo.new()
obj1.method

class Demo
    def method2
        puts "defination of method2 when class reopened"
    end
end

class Demo
    def method3
        puts "defination of method3 when class reopened "
    end
end
obj2=Demo.new()
obj2.method2
obj2.method3
obj2.method1
obj.method3 # this will give error 
