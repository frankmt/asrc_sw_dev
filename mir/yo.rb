	game_in_progress = true
while game_in_progress 
	user_name = ARGV.first #
	prompt = '>'
	lucky_number = rand(10) + 1
	puts "Yo #{user_name}."
	puts "You got 20 seconds to answer."
	puts "Your Lucky Number? "
	puts prompt
	
	input = $stdin.gets.chomp
 if input == 'exit'
	puts "Thanks for playing"
	puts "Ciao"
	game_in_progress = false	
elsif input.to_i == lucky_number
	puts "Lucky Basterd"
	puts "your final guess was #{input}"
	game_in_progress = false
else
	"Think harder"
	puts prompt
	puts "Second chance"


end
end