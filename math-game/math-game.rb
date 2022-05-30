class Player
  attr_reader :name
  attr_accessor :lives

  def initialize (name)
    @name = name
    @lives = 3
  end
end

class Game 
  def initialize (player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
  end

  def change_player
    if @current_player == @player_1
      @current_player = @player_2
    else 
      @current_player = @player_1
    end
  end

  def ask_question
    # generate a random math equation
    variable_1 = rand(1..10)
    variable_2 = rand(1..10)
    sum = variable_1 + variable_2
    puts "#{@current_player.name}: What is #{variable_1} plus #{variable_2}?"

    # collect answer from player
    answer = gets.chomp

    # check to see if it's correct, if not, decrement the lives
    if answer.to_i == sum
      puts "YES! You are correct"
      puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3" 
    else 
      puts "Really? -1 life for you"
      @current_player.lives -= 1
      puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
    end
    change_player
  end

  def play_game

    while @player_1.lives > 0 && @player_2.lives > 0
      puts "----- NEW TURN -----"
      ask_question
    end

    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"

  end

end

player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")

game = Game.new(player_1, player_2)
game.play_game