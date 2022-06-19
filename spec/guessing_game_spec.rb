require_relative "../guessing_game.rb"

describe 'guessing game' do
    game = GuessingGame.new
    secret_word = game.secret_word() + "\n"
    incorrect_guess = "stab in the dark \n"

    describe 'start guessing game' do
        it 'outputs "guess the secret word" and prompts user input when run' do
            allow(game).to receive(:gets).and_return(secret_word)
            expect { game.start }.to output(/^Guess the secret word:/).to_stdout
        end
        it 'prompts the user to enter a guess and returns true if it matches secret word' do
            allow(game).to receive(:gets).and_return(secret_word)
            expect(game.start).to eq "Astonishing!"
        end
        it 'prompts the user to enter a guess and returns false if it does not match secret word' do
            allow(game).to receive(:gets).and_return(incorrect_guess)
            expect(game.start).to eq false
        end
    end
end