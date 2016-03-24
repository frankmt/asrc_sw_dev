i = 0
numbers = []
array = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
while i < 7
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "array now: ", array
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num }