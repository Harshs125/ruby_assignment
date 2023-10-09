class Animal
    def speak
         "hello !"
    end
end


class GoodDog < Animal
    def speak
        super + " from good Dog class"
    end
end


d=GoodDog.new
puts d.speak