
class Game

  def initialize(player1, player2)
    @current_user = nil
    @p1 = player1
    @p2 = player2
  end

  def start_game
    puts "The game will now begin! The players are #{@p1.name} and #{@p2.name}."
    @current_user = @p1
    game_loop
  end

  def announce_winner
    winner = nil
    if @p1.life_points != 0
      winner = @p1.name
    else
      winner = @p2.name
    end
    puts
    puts "----- WINNER -----"
    puts "And the winner is #{winner}!!"
  end

  def alternate_player
    if @current_user.name == @p1.name
      @current_user = @p2
    else
      @current_user = @p1
    end
  end

  def game_loop
    loop do
      puts
      puts "----- NEW TURN -----"
      puts "It is #{@current_user.name}'s turn!"
      question = Question.new(@current_user).check_answer
      puts "#{@p1.name}: #{@p1.life_points}/3 vs. #{@p2.name}: #{@p2.life_points}/3"
    break if (@current_user.life_points == 0)
      alternate_player
    end
    announce_winner
  end

end



