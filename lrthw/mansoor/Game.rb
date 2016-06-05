require 'rubygems'
require 'rubygame'
 
class Game
    def initialize
        @screen = Rubygame::Screen.new [640, 480], 0, [Rubygame::HWSURFACE, Rubygame::DOUBLEBUF]
        @screen.title = &quot;Pong&quot;
 
        @queue = Rubygame::EventQueue.new
        @clock = Rubygame::Clock.new
        @clock.target_framerate = 60
    end
 
    def run!
        loop do
            update
            draw
            @clock.tick
        end
    end
 
    def update
        @queue.each do |ev|
            case ev
                when Rubygame::QuitEvent
                    Rubygame.quit
                    exit
            end
        end
    end
 
    def draw
    end
end
 
g = Game.new
g.run!
