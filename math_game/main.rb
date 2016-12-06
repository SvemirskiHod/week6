require './game'
require './player'
require './question'

print "Who is player 1? "
name1 = gets.chomp

print "Who is player 2? "
name2 = gets.chomp


p1 = Player.new(name1)
p2 = Player.new(name2)
g1 = Game.new(p1, p2).start_game

