i = 0
letter = 'h'
letters = []

alphabet = ['h','g','f','e','d','c','b','a']

while letter > '0'
   puts "At the top the letter is #{letter}"
     letters.push(letter)

       i += 1
       letter = alphabet[i]
       puts "letters now: ", letters 
       puts "At the bottom the letter is #{letter}"
end