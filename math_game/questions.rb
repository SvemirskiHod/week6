class Questions

  attr_reader :numbers, :question, :answer

  def initialize
    @numbers = [rand(1..20), rand(1..20)]
    @question =  "What is #{@numbers[0]} + #{numbers[1]}?"
    @answer = numbers[0] + numbers[1]
  end

end

# q1 = Questions.new
# puts q1.question
# puts q1.answer