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
	# ["1234"]
	
	result = words.map do |word|
	  #is this a string?
	  if word.to_i.to_s == word
	  	["number", word.to_i]
	  else
	    puts "**** #{word}"
	    word_symbol = dict[word.to_sym]
  	    word_string = word_symbol.to_s 
	    [word_string, word]
	    
	  end
	end	
  	
  	result
  end

end