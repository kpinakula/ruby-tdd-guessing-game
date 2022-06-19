# ruby-tdd-guessing-game
A word guessing game built in Ruby and using rspec for testing

## Get set up:

1. Clone this repo by using `$ git clone https://github.com/kpinakula/ruby-tdd-guessing-game.git`

1. If you don't have a bundler - tool to track and install gems - run `$ gem install bundler`

1. Install gems with `bundle install --path vendor/bundle`

## Run the Tests:

`bundle exec rspec`

## Run the Game:

1. Enable the following commented out lines of code at the bottom of `guessing_game.rb`:

```
# game_instance = GuessingGame.new
# game_instance.start
```

2. Run `ruby guessing_game.rb`

3. Comment the above lines of code out again if you want to run the tests
