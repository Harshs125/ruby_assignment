class NumberAnalysis
    def initialize(number)
        @number=number
    end
    def is_prime()
        for i in 2..@number/2 do
            if @number%i==0
                return "Number is not Prime"
            end
        end
        "Number is Prime"
    end
end


num1=NumberAnalysis.new(7)
num2=NumberAnalysis.new(8)
num3=NumberAnalysis.new(9)
num4=NumberAnalysis.new(18)
num5=NumberAnalysis.new(23)
num6=NumberAnalysis.new(5)

puts num1.is_prime
puts num2.is_prime
puts num3.is_prime
puts num4.is_prime
puts num5.is_prime
puts num6.is_prime



