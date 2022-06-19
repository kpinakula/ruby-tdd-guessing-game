class GuessingGame
    def secret_word
        "abracadabra"
    end

    def guess
        gets.chomp
    end

    def start()
        puts "guess the secret word"
        guess = guess()
        if guess == secret_word
            true
        else
            false
        end
    end
end