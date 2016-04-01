letters = []
letter = ARGV[0]

alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
i = alphabet.index(letter)
while i < alphabet.size 
       letter =alphabet[i]
       puts letter
       i += 1
   
end