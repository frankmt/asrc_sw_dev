class Song

	def initialize(lyrics)
	  @lyrics = lyrics
	end
	
	def sing_me_a_song()
	  @lyrics.each {|line| puts line }
	end
end

Twinkle_Twinkle = Song.new(["Twinkle Twinkle little star",
				"How i wonder what you are",
				"Up above the world so high",
				"Like the Diamond in the sky"])

When_The_Blazing = Song.new (["When the blazing sun is gone",
				"When he nothing shines upon",
				"Then you show your little light",
				"Twinkle, twinkle, all the night"])

Twinkle_Twinkle.sing_me_a_song()

When_The_Blazing.sing_me_a_song() 
				
				

	