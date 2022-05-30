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
    print "Answer: "
    answer = gets.chomp

    # check to see if it's correct, if not, decrement the lives
    if answer.to_i == sum
      puts "\nYES! You are correct"
      puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3" 
    else 
      @current_player.lose_a_life
      puts "Really? -1 life for you"
      puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
    end
    change_player
  end

  def play_game
    while @player_1.lives > 0 && @player_2.lives > 0 do
      puts "\n----- NEW TURN -----\n"
      ask_question
    end

    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "\n----- GAME OVER -----\n"
    puts "Good bye!"

  end

end
