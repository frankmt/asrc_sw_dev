require "test/unit"
require "parser.rb"

class TestParser < Test::Unit::TestCase
	
# 	def test_peek()
# 		word1 = [['verb', 'run'],['direction','north']]
# 		word2 = [['noun', 'bear'],['verb','eat'],['stop','the'], ['noun', 'honey']]
# 		word3 = ['verb','run']
# 		subj = ['noun','player']
# 		verb = ['verb','run']
# 		obj = ['direction','north']
# 	    sentence = Sentence.new(subj, verb, obj)
# 		assert_equal(sentence.peek(word1),'verb') 
# 		assert_equal(sentence.peek(word2), 'noun')
# 		assert_equal(sentence.peek(word3), 'v')
# 	end
# 	
	def test_match()
		word1 = [['verb', 'run'],['direction','north']]
		word3 = ['verb','run']
		subj = ['noun','player']
		verb = ['verb','run']
		obj = ['direction','north']
		sentence = Sentence.new(subj, verb, obj)
		result = sentence.match(word1, 'verb')
		assert_equal(sentence.match(word1, 'verb'),word3)
	end
	
# 	
# 	def test_skip()
# 	    word = [['verb','run'],['direction','north']]
# 	    subj = ['noun','player']
# 		verb = ['verb','run']
# 		obj = ['direction','north']
# 	    sentence = Sentence.new(subj, verb, obj)
# 		result = sentence.skip(word,'verb')
# 		assert_equal(sentence.skip(word,'verb'),[['direction','north']])
# 	end
# 	
# 	def test_parse_verb()
# 		word1 = [['verb', 'run'],['direction','north']]
# 		word3 = ['verb','run']
# 		sentence = Sentence.new(word1, 'verb')
# 		assert_equal(parse_verb(word1), word3)
# 		assert_raise("Expected a verb next.") 
# 	end
# 	
# 
# 	def test_parse_object()	
# 		word2 = [['noun', 'bear'],['verb','eat'],['stop','the'], ['noun', 'honey']]
# 		sentence = Sentence.new(word2, 'noun')
# 		assert_equal(sentence.parse_object(word2), ['noun','bear'])
# 		assert_raise("Expected a noun or direction next.")
# 	end
# 
# 	def test_parse_subject()
# 		
# 		word1 = [['verb', 'run'],['direction','north']]
# 		word2 = [['noun', 'bear'],['verb','eat'],['stop','the'], ['noun', 'honey']]
# 		sentence = Sentence.new(word1, 'verb')
# 		assert_equal(parse_subject(word1), ['noun','player'])
# 		assert_equal(parse_subject(word2), ['noun','bear'])
# 		
# 		assert_raise("Expected a verb next.")
# 	end
# 	
# def test_parse_sentence()
# 		
# 		subj = ['noun','player']
# 		verb = ['verb','run']
# 		obj = ['direction','north']
# 		
# 		sentence = Sentence.new(subj, verb, obj)
# 		
# 		assert_equal(sentence.subject, subj[1])
# 		assert_equal(sentence.verb, verb[1])
# 		assert_equal(sentence.object, obj[1])
# 	end	
# 	
end