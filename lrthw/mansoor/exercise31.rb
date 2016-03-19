puts "you enter a dark room with two doors. Do you go through door #1 or door #2?"

print "> "
door = $stdin.gets.chomp

if door == "1"
	puts "there's a giant bear here eating a cheese cake. what do you do?"
	puts "1. take the cake."
	puts "2. scream at the bear."
	
	print "> "
	bear = $stdin.gets.chomp
	
	if bear == "1"
		puts "the bear eats your face off. good job!"
	elsif bear == "2"
		puts "the bear eats your legs off. good job!"
	else
		puts "well, doing %s is probably better. bear runs away." % bear
	end

elsif door == "2"
	puts "you stare into the endless ebyss at cthulu's retina."
	puts "1. blueberries."
	puts "2. yellow jacket clothspins."
	puts "3. understanding revolvers yelling melodies."
	
	print "> "
	insanity = $stdin.gets.chomp
	
	if insanity == "1" || insanity == "2"
	 puts "Your body survives powered by a mind of jello.  Good job!"
  else
    puts "The insanity rots your eyes into a pool of muck.  Good job!"
  end

else
	puts "you stumble around and fall on a  knife and die. good job!"
end