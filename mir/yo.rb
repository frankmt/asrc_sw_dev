user_name = ARGV.first #
prompt = '>'
lucky_number = 7
puts "Yo #{user_name}."
puts "You got 20 seconds to answer."
puts "Your Lucky Number? "
puts prompt
number = $stdin.gets.chomp

if number.to_i == lucky_number
puts "Lucky Basterd"

else
"Think harder"
puts prompt
puts "Second chance"
number = $stdin.gets.chomp
end
puts "your final guess was #{number}"
