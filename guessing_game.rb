class GuessingGame
    def secret_word
        "abracadabra"
    end

    def create_message(type)
        case type
            when :welcome
                "Guess the secret word:"
            when :try_again
                "Tough luck! Guess again:"
            when :congrats
                "Astonishing!"
        end
    end

    def start
        puts create_message(:welcome)
        guess = gets.chomp
        check_guess(guess)
    end

    private 

    # recursive example:
    # gets.chomp == secret_word ?
    # create_message(:congrats) :
    # (puts create_message(:try_again); check_guess())

    def check_guess(guess)
        while guess != secret_word()
            puts create_message(:try_again)
            guess = gets.chomp
        end
        create_message(:congrats)
    end
end

# game_instance = GuessingGame.new
# puts game_instance.start