class Question

  attr_reader :numbers, :question, :answer

  def initialize(current_user)
    @numbers = [rand(1..20), rand(1..20)]
    @question =  "What is #{@numbers[0]} + #{numbers[1]}?"
    @answer = numbers[0] + numbers[1]
    @current_user = current_user
  end

  def check_answer
    puts "#{@current_user.name}, #{@question}"
    answer = gets.chomp.to_i
    if @answer == answer
      puts "That is the CORRECT answer!"
    else
      @current_user.reduce_life
      puts "That is INCORRECT!"
    end
  end

end
