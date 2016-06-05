class Scene
	def enter()
	 puts "This scene is not yet configured. Subclass it and implement enter()."
	 exit(1)
	end
end
class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    # be sure to print out the last scene
    current_scene.enter()
  end
end

class locked < scene
	 @@quips = [
	 "you can't come in becouse the door is locked and there is no key",
	 "Just stay outside dont come in",
	 "I am busy i can't open the door",
	 "welcom",]
def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end

class KnokKnok < Scene

  def enter()
    puts "who's this"
    print "> "
    
action = $stdin.gets.chomp

if action == 'Jack'
	puts "you can't come in becouse the door is locked and there is no key"
end

if action == 'Ali'
	puts "Just stay outside dont come in"
end
	
If action == 'Khan'
	puts "I am busy i can't open the door"
end
	
if action == 'Mansoor'
	puts"Welcome"
end	
	
	return 'Finished'

class Finished < Scene
  def enter()
    puts "You are most welcome! Good job."
end
end

class Map
  @@scenes = {	
  	'KnokKnok' => KnokKnow.new(),
    'Locked' => Locked.new(),
    'finished' => Finished.new(),
  }


  def initialize(start_scene)
    @start_scene = start_scene
  end


  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()