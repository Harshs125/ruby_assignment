# program to check student level according to grade

puts("Enter the grade of the student :")
grade=gets.chomp.to_i
if grade<=5&&grade>=1
    puts("elementary school")
elsif grade>=6&&grade<=8
    puts("middle school")
elsif grade>=9&&grade<=12
    puts("high school")
else
    puts("college")
end