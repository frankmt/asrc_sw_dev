require './bin/app.rb'
require 'test/unit'
require 'rack/test'

class MyAppTest < Test::Unit::TestCase
	include Rack::Test::Methods
	
	def app
		Sinatra::Application
	end
	
	def test_my_default
		get '/'
		assert_equal 302, last_response.status
	end
	
	def test_show_room
		get '/game'
		assert last_response.ok?
		
		assert last_response.body.include?('like you bit the dust')
	end
	
	def test_hello_form_post_failure
		post '/game', params={:action => 'tell a joke'}
		
		assert last_response.ok?
		
		assert last_response.body.include?('like you bit the dust')
	end
	
	def test_hello_form_post_success
		session = {:room => 'CENTRAL_CORRIDOR'}
		post '/game', params = {:action => 'tell a joke'}, 'rack.session' => session
		
		assert_equal 302, last_response.status
		#assert_equal 'LASER_WEAPON_ARMORY', session[:room]
	end
	
end