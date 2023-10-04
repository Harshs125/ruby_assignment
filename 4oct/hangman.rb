def generate_word
    words=["java","swift","python","kotlin","ruby"]
    words.sample
end
$word=generate_word
$guessed_word = "_"*$word.length 
max_attempts = 6
$attempts_left = max_attempts
$guessed_letters = []


def show_status
    puts "word: #{$guessed_word}"
    puts "attempts left: #{$attempts_left}"
    puts "Guessed letters : #{$guessed_letters.join(", ")}"
end


def enter_letter
    puts "Enter a Letter :"
    letter = gets.chomp.downcase
    if letter.length==1 && letter.match(/[a-z]/) && !$guessed_letters.include?(letter)
        return letter
    else
        return $guessed_letters
    end
end

def update_word(letter)
    $word.split("").each_with_index do |char,idx|
        $guessed_word[idx]=char if char==letter
    end
end

def play()
    until $attempts_left==0 || $guessed_word==$word
        show_status
        
        letter=enter_letter
        if $word.include?(letter)
            update_word(letter)
        else
            $attempts_left-=1
        end
        $guessed_letters << letter
    end
    show_status

    if $guessed_word==$word
        puts "Congratulations you have guessed the word"
    else 
        puts "\n You have run out of attempts. the word is #{$word} TRY AGAIN!"
    end
end


puts("------------------------------>HANGMAN<-------------------------------------------")
play()