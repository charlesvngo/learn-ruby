### Details

Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

### Nouns for Classes

Player  - A player in the game. Has 3 lives and answers questions against another player
Game - determines the current player. Generates the questions.


player 
  attr_reader :name, :lives

  name: player 
  lives: 3

  def lose_a_life
    lives - 1
  end



game
  init
    player 1
    player 2
    current_player

  def change_player
    if player 1
      current_player is now player 2
    else
      current_player is now player 1

