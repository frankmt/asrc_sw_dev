i = 0
letter = 'a'
letters = []

alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

while letter < 'h'
   puts "At the top the letter is #{letter}"
     letters.push(letter)

       i += 1
       letter = alphabet[i]
       puts "letters now: ", letters 
       puts "At the bottom the letter is #{letter}"
end