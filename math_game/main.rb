require './games'
require './players'
require './questions'

print "Who is player 1? "
name1 = gets.chomp

print "Who is player 2? "
name2 = gets.chomp


p1 = Players.new(name1)
p2 = Players.new(name2)
g1 = Games.new(p1, p2)

