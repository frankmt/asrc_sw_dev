filename = ARGV.first

txt = open(filename, "w+")

puts "Here's your file #{filename}:"
print txt.read

print "Type the FILENAME again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read