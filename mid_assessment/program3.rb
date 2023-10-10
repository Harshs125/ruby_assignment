class StringOps
    def initialize(str)
        @string=str
    end
    def reverse()
        @string.reverse!
    end
end
letters=*('a'..'z')

str1=StringOps.new("harsh")
str2=StringOps.new("aditya")
str3=StringOps.new(letters)

puts str1.reverse()
puts str2.reverse()
puts str3.reverse().join()