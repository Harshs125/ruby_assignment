# program to valid name,email,phoneno,gender,amount

mobile_regex = /\A\d{10}\z/
name_regex = /\A[a-zA-Z\s]+\z/
gender_regex = /\A(M|F)\z/i
email_regex = /\A[a-z0-9._%+-]+@[a-z]+\.[a-z]{3}\z/
amount_regex = /\A\d+(\.\d{1,2})?\z/

puts("Enter the name to validate ")
name=gets.chomp
puts("Enter the email")
email=gets.chomp
puts("Enter the phone number")
mobile=gets.chomp
puts("Enter the gender M/F m/f")
gender=gets.chomp
puts("Enter the amount")
amount=gets.chomp

puts(!!(name=~name_regex))
puts(!!(email=~email_regex))
puts(!!(mobile=~mobile_regex))
puts(!!(gender=~gender_regex))
puts(!!(amount=~amount_regex))
