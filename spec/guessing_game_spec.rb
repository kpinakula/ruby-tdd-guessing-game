require_relative "../guessing_game.rb"

describe 'guessing game' do
    game = GuessingGame.new

    describe 'start guessing game' do
        it 'outputs "guess the secret word" when run' do
            expect { game.start() }.to output(/^guess the secret word/).to_stdout
        end
    end
end