class GuessingGame
    def secret_word
        "abracadabra"
    end

    def prompt_guess
        gets.chomp
    end

    def start()
        puts "Guess the secret word:"
        guess = prompt_guess()

        while guess != secret_word()
            puts "Guess again:"
            guess = prompt_guess()
        end
        "Astonishing!"
    end
end