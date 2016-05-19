class Lexicon

	NUMBERS = ["1","2","3","4","5","6","7","8","9"]
	
	WORDS = {
		"north" => "direction",
		"south" => "direction",
		"east" => "direction",
		"west" => "direction",
		"go" => "verb",
		"kill" => "verb",
		"eat" => "verb",
		"the" => "stop",
		"of" => "stop",
		"in" => "stop",
		"bear" => "noun",
		"princess" => "noun"
	}
	
	def self.scan(words)
		results = []
		
		words.split.each do |word|
			if WORDS.has_key?(word)
				results << [WORDS[word],word]
			elsif word.split('').select{|charachter| !NUMBERS.include?(charachter)}.empty?
				results << ['number', word.to_i]
			end
			
		end
		results
	end
end