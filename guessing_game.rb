class GuessingGame
    def secret_word
        "abracadabra"
    end

    def guess
        gets.chomp
    end

    def start()
        puts "Guess the secret word:"
        guess = guess()
        if guess == secret_word
            "Astonishing!"
        else
            false
        end
    end
end