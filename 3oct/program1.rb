# program for check the given number is prime or not .

puts("enter the number to check:") 
num=gets.chomp.to_i
i=2
while i <= num/2
    if num%i==0
        puts("the number #{num} is not prime number")
        break
    end
    i+=1
end
if i>num/2
    puts("the number #{num} is prime number")
end
