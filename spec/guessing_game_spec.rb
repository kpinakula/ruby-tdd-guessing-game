require_relative "../guessing_game.rb"

describe 'guessing game' do
    game = GuessingGame.new
    secret_word = game.secret_word() + "\n"
    incorrect_guess = "stab in the dark \n"
    welcome_message = game.create_message(:welcome)
    try_again_message = game.create_message(:try_again)
    congrats_message = game.create_message(:congrats)

    describe 'start guessing game' do
        it 'outputs "guess the secret word" and prompts user input when run' do
            allow(game).to receive(:gets).and_return(secret_word)
            expect { game.start }.to output(/^#{welcome_message}/).to_stdout
        end
        it 'returns "Astonishing!" if guess matches secret word' do
            allow(game).to receive(:gets).and_return(secret_word)
            expect(game.start).to eq congrats_message
        end

        describe 'allows multiple guesses and' do
            it 'returns "Astonishing!" after simulated input: incorrect guess > correct guess' do
                allow(game).to receive(:gets).and_return(incorrect_guess, secret_word)
                expect(game.start).to eq congrats_message
            end
            it 'returns "Astonishing!" after simulated input: incorrect guess (x 4) > correct guess' do
                allow(game).to receive(:gets).and_return(incorrect_guess, incorrect_guess, incorrect_guess, incorrect_guess, secret_word)
                expect(game.start).to eq congrats_message
            end
            it 'outputs "Guess again:" onne time if first guess does not match secret word' do
                allow(game).to receive(:gets).and_return(incorrect_guess, secret_word)
                expect { game.start }.to output(/^#{welcome_message}\n#{try_again_message}\n$/).to_stdout
            end
            it 'outputs "Guess again:" twice if first two guesses do not match secret word' do
                allow(game).to receive(:gets).and_return(incorrect_guess, incorrect_guess, secret_word)
                expect { game.start }.to output(/^#{welcome_message}\n#{try_again_message}\n#{try_again_message}\n$/).to_stdout
            end
        end
    end
end