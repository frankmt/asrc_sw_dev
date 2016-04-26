class Game

    def initialize(start)
        @quips = [
            "You died. You kinda suck at this.",
            "Nice job, you died...jackass",
            "Such a luser",
            "I have a small puppy that's better at this"
        ]
        @start = start
    end
    
    def prompt()
        print "> "
    end
    
    def play()
        next_room = @start
        
        while true
           puts "\n------------"
            room = method(next_room)
            next_room = room.call()
        end
    end
    
    def death()
        puts @quips[rand(@quips.length())]
        Process.exit(1)
    end
    
    def central_corridor()
        puts "The Gothons of Planet Percal have invaded your ship and destroyed"
        puts "your entire crew. You are the last surviving member and your last"
        puts "mission is to get the neutron destruction bomb from the weapons armoury."
        puts "put it in the bridge, and blow the ship up after getting into an"
        puts "escape pod"
        puts "\n"
        puts "You're running down the central corridor to the weapons armoury when"
        puts "A gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume"
        puts "flowing around his hate filled body. He's blocking the door to"
        puts "the armoury and about to pull a weapon to blast you"
        
        prompt()
        action = gets.chomp()
        
        if action == "shoot!"
            puts "Quick on the draw you yank out your blaster and fire it at the Gothon"
            puts "His clown costume is flowing and moving around his body, which throws"
            puts "off your aim. Your laser hits his costume but misses him entirely. This"
            puts "completely ruins his brand new costume his mother brought him, which"
            puts "makes him fly into an insane rage and blast you repeatedly in the face until"
            puts "you are dead. then he eats you"
            return :death
        
        elsif action == "dodge!"
        puts "Like a world class boxer you dodge, weave, swerve and slip right"
        puts "As the Gothon's blaster cranks a laser past yoru head."
        puts "In the middle of your artful dodge your foot slips and you"
        puts "bang your head on the metal wall and pass out"
        puts "You wake up shortly after only to die as the Gothon stomps on your head"
        puts "and eats you"
        return :death
        
        elsif action == "tell a joke"
        puts "Lucky for you they made you learn Gothon insults at the academy"
        puts "You tell the one Gothon joke you know:"
        puts "Lbhe zbgure vf fb sng, jura fur fvgf nabhaq gur ubhfr"
        puts "The gothon stops. Tries not to laugh, then bursts out laughing and is unable to move"
        puts "While he's laughing you run up and shoot him square in the head"
        puts "Putting him down, then run through the weapon armoury door"
        return :laser_weapon_armory
        
        else
            puts "Does not compute!"
            return :central_corridor
        end
    end
    
    def laser_weapon_armory()
        puts "You do a dive roll into the Weapon armory, crouch, and scan the room"
        puts "for more Gothons that might be hiding. It's dead quiet, too quiet"
        puts "You stand up and run to the far side of the room and find the"
        puts "Neutron bomb in its container. There's a keypad lock on the box"
        puts "and you need the code to get the bomb out. If you get the code"
        puts "wrong 10 times then the lock closes forever and you can't"
        puts "get the bomb. The code is 3 digits"
        code = "%s%s%s" % [rand(9)+1, rand(9)+1, rand(9)+1]
        print "[keypad]> "
        guess = gets.chomp()
        guesses = 0
        
        while guess != code and guesses < 10
            puts "BZZED"
            guesses += 1
            print "[keypad]> "
            guess = gets.chomp()
        end
        
        if guess == code
            puts "The container breaks open and the seal breaks, letting the gas out"
            puts "You grab the neutron bomb and run as fast as you can to the"
            puts "bridge where you must place it in the right spot"
            return :the_bridge
        else
            puts "The lock buzzes one last time and then you hear a sickening"
            puts "melting sound as the mechanism is fused together"
            puts "You decide to sit there, and finally the Gothons blow up the"
            puts "ship from their ship and you die"
            return :death
        end
    end
    
    
    def the_bridge()
        puts "You burst onto the bridge with the Neutron destruct bomb"
        puts "under your arms and surprise 5 gothons who are trying to"
        puts "take control of the ship. Each one of them has an even uglier"
        puts "clown costume than the last. They haven't pulled their"
        puts "Weapons out yet, as they see the active bomb under your"
        puts "arm and don't want to set it off"
        
        prompt()
        action = gets.chomp()
        
        if action == "throw the bomb"
            puts "In a panic you throw the bomb at the group of Gothons"
            puts "and make a leap for the door. Right as you drop it a"
            puts "Gothon shoots you right in the back killing you"
            puts "as you die you see another Gothon frantically trying to disarm"
            puts "the bomb. you die knowing they will probably blow up"
            puts "when it goes off"
            return :death 
            
        elsif action == "slowly place the bomb"
            puts "you point the blaster at the bomb under your arm"
            puts "and the Gothons put their hands up and start to sweat"
            puts "you inch backward to the door, open it, and then carefully"
            puts "place the bomb on the floor, pointing your blaster at it."
            puts "You then jump back through the door, hitting the close button." 
            puts "and blast the lock so the Gothons can't get out"
            puts "now that the bomb is placed you run to the escape pod to"
            puts "get off this tin can"
            return :escape_pod
            
        else 
            puts "Does not compute"
            return :the_bridge
        end
    end
    
    def escape_pod()
        puts "You rush through the ship desperately trying to make it to"
        puts "the escape pod before the whole ship explodes. It seems like"
        puts "hardly any Gothons are on the ship, so your run is clear of"
        puts "interference. You get to the chamber with the escape pods and"
        puts "now need to pick one to take. Some of them could be damaged"
        puts "but you don't have time to look. There's five pods"
        puts "which one do you take"
        
        good_pod = rand(5)+1
        print "[pod #]>"
        guess = gets.chomp()
        
        if guess.to_i != good_pod
            puts "You jump into pod %s and hit the eject button" % guess
            puts "The pod escapes out into the void of space, then"
            puts "implodes as the hull ruptures, crushing your body"
            puts "into jam jelly"
            return :death
        else 
            puts "You jump into pod %s and hit the eject button." % guess
            puts "the pod easily slides out into space heading to"
            puts "the planet below. As it flies to the planet you look"
            puts "back and see your ship implode then explode like a"
            puts "bright star, taking out the Gothon ship at the same time"
            puts "You won!"
            Process.exit(0)
        end
    end
end

a_game = Game.new(:central_corridor)
a_game.play()