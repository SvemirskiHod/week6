
class Games

  def initialize(player1, player2)
    @current_user = nil
    @p1 = player1
    @p2 = player2
    start_game(@p1, @p2)
  end

  def start_game(player1, player2)
    puts "The game will now begin! The players are #{player1.name} and #{player2.name}."
    current_user(@p1)
    game_loop
  end

  def current_user(user)
    @current_user = user
  end

  def announce_winner()
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

  def game_loop
    counter = 0
    loop do
      puts
      puts "----- NEW TURN -----"
      puts "It is #{@current_user.name}'s turn!"
      question = []
      question[counter] = Questions.new
      puts "#{@current_user.name}, " + question[counter].question
      answer = gets.chomp.to_i
        if question[counter].answer == answer
          puts "That is the correct answer!"
        else
          @current_user.reduce_life
          puts "That is incorrect!"
        end
      puts "#{@p1.name}: #{@p1.life_points}/3 vs. #{@p2.name}: #{@p2.life_points}/3"
        if @current_user.name == @p1.name
          current_user @p2
        else
          current_user @p1
        end
      counter +=1
     break if (@p1.life_points == 0 || @p2.life_points == 0)
    end
    announce_winner
  end


end



