require_relative 'roller'
require_relative 'runner_utili'
f_voice  = "-v karen"
m_voice   = "-v tom"

class Players
  attr_reader :name
  attr_accessor :piece
  def initialize(name)
    @name   = name
    @piece  = piece
  end
end

@players = []
reset_screen!
line
puts "CONNECT FOUR".center(center_it)
line
puts `say welcome to connect four`
puts `say i need to collect the players names`

puts `say what is player ones name`
print "What is player's one name: "
player1 = Players.new(gets.chomp.capitalize)
player1.piece = "X"
puts `say #{f_voice} hi #{player1.name}`

puts `say what is players two name`
print "What is player's two name: "
player2 = Players.new(gets.chomp.capitalize)
player2.piece = "O"
line
puts `say #{f_voice} hi #{player2.name}`
wait

puts `say #{f_voice} #{player1.name} and #{player2.name} welcome to Connect Four`

line

puts `say #{f_voice} Lets get started`
puts `say #{f_voice} now that I have the players names`
puts `say #{f_voice} we need to roll one die to see who will go first`
line
# wait
until @players.length == 2
  puts `say #{player1.name} please roll the die by pressing the return key`
	print "#{player1.name}, roll your dice by hitting return(enter): "
	gets.chomp
	roll_dice(1)
	puts


	puts `say #{f_voice} #{player1.name} rolled a #{@face_value}`
	p1_roll = @face_value
	
	
	puts
	puts `say #{player2.name} now you can roll the die by pressing the return key`
	print "#{player2.name}, roll your dice by hitting return(enter): "
	gets.chomp
	roll_dice(1)
	puts
	puts `say #{f_voice} #{player2.name} rolled a #{@face_value}`
	p2_roll = @face_value
	
	if p1_roll > p2_roll
    puts
		puts `say #{f_voice} #{player1.name} you will go frist!`
		@players << player1 << player2
	elsif p1_roll < p2_roll
    puts
		puts `say #{f_voice} #{player2.name} you will go first!`
		@players << player2 << player1
	else
    puts
		puts `say #{f_voice} Roll again guys, that was a tie`
    puts
	end
end
# `say -v ralph hello, This page does not work on your computer. your computer is not as smart as myself`
# p @players.length

# else p1_roll == p2_roll
# 		puts "OOPPSSS a tie, what do we do now??"
