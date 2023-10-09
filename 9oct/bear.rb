class Animal
    def initialize
        # Error
        # puts "deded"
    end
end


class Bear < Animal
    def initialize(color)
        super #forget to use parenthesis so error will generate for arguments
        @color = color
        puts @color
    end
end

bear = Bear.new("Brown")
