class Lexicon
  
  def self.dict
    {
      :north => :direction,
      :south => :direction,
      :east  => :direction,
      :west  => :direction,
      :go    => :verb,
      :kill  => :verb,
      :eat   => :verb,
      :bear     => :noun,
      :princess => :noun,
      :the   => :stop,
      :in    => :stop,
      :of    => :stop,
    }
  end
  
  def self.scan(string)
  	#string = "1234"
	words =	string.split
	puts words
	
	result = words.map do |word|
	  #is this a string?
	  if word.to_i.to_s == word
	  	["number", word.to_i]	
	  else
	    word_symbol = dict[word.to_sym]
	    if word_symbol == nil
	  	  ["error", word]
	    else  
  	      word_string = word_symbol.to_s
	      [word_string, word]
	    end
	  end
	end	
  	
  	result
  end

end