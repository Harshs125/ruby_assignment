class RegexValidator
    def initialize(key,value)
        @mobile_regex = /\A\d{10}\z/
        @name_regex = /\A[a-zA-Z\s]+\z/
        @gender_regex = /\A(M|F)\z/i
        @email_regex = /\A[a-z0-9._%+-]+@[a-z]+\.[a-z]{3}\z/
        @amount_regex = /\A\d+(\.\d{1,2})?\z/
        @key=key
        @value=value
    end

    def validate()
        case @key
        when "mobile"
            if !!(@value=~@mobile_regex)
                "#{@value} is a valid #{@key}"
            else
                "#{@value} is not a valid #{@key}"
            end
        when "name"
            if !!(@value=~@name_regex)
                "#{@value} is a valid #{@key}"
            else
                "#{@value} is not a valid #{@key}"
            end
        when "email"
            if !!(@value=~@email_regex)
                "#{@value} is a valid #{@key}"
            else
                "#{@value} is not a valid #{@key}"
            end
        when "amount"
            if !!(@value=~@amount_regex)
                "#{@value} is a valid #{@key}"
            else
                "#{@value} is not a valid #{@key}"
            end
        when "gender"
            if !!(@value=~@gender_regex)
                "#{@value} is a valid #{@key}"
            else
                "#{@value} is not a valid #{@key}"
            end
        else
            "enter a valid option"
        end
    end
end


name1=RegexValidator.new("name","harsh")
email1=RegexValidator.new("email","soni.hs661@gmail.com")
mobile1=RegexValidator.new("mobile","7999901493")
gender1=RegexValidator.new("gender","M")
amount1=RegexValidator.new("amount","34454.12")

puts name1.validate()
puts email1.validate()
puts mobile1.validate()
puts gender1.validate()
puts amount1.validate()


name2=RegexValidator.new("name","hars @##sh")
email2=RegexValidator.new("email","soni.hs661!gmail.com")
mobile2=RegexValidator.new("mobile","799991493")
gender2=RegexValidator.new("gender","d")
amount2=RegexValidator.new("amount","34@454.12w2w2")

puts name2.validate()
puts email2.validate()
puts mobile2.validate()
puts gender2.validate()
puts amount2.validate()