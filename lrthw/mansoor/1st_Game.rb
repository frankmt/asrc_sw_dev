1 require 'gosu'
 2 
 3 class GameWindow < Gosu::Window
 4   def initialize(width=320, height=240, fullscreen=false)
 5     super
 6     self.caption = 'Hello'
 7     @message = Gosu::Image.from_text(
 8       self, 'Hello, World!', Gosu.default_font_name, 30)
 9   end
10 
11   def draw
12     @message.draw(10, 10, 0)
13   end
14 end
15 
16 window = GameWindow.new
17 window.show
