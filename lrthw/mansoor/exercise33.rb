i = 0
index = []
array = [0, 1, 2, 3, 4, 5, 6]
array[0] = 'a'
array[1] = 'b'
array[2] = 'c'
array[3] = 'd'
array[4] = 'e'
array[5] = 'f'
array[6] = 'g'
while i < 7
  puts "At the top i is #{i}"
  array.push(i)

  i += 1
  puts "array now: ", array
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num }