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
        it 'returns "Astonishing!" if guess matches secret word' do
            allow(game).to receive(:gets).and_return(secret_word)
            expect(game.start).to eq "Astonishing!"
        end

        describe 'allows multiple guesses and' do
            it 'returns "Astonishing!" after simulated input: incorrect guess > correct guess' do
                allow(game).to receive(:gets).and_return(incorrect_guess, secret_word)
                expect(game.start).to eq "Astonishing!"
        end
            it 'returns "Astonishing!" after simulated input: incorrect guess (x 4) > correct guess' do
                allow(game).to receive(:gets).and_return(incorrect_guess, incorrect_guess, incorrect_guess, incorrect_guess, secret_word)
                expect(game.start).to eq "Astonishing!"
        end
        end
    end
end