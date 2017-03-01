require 'gosu'
module Escape
  class Game < Gosu::Window

    FONT_ASSETS = {
      font: "assets/fonts/pixelade-webfont.ttf"
    }

    def initialize
      @width = 1280
      @height = 720
      super @width, @height, fullscreen: false
      self.caption = "Escape v0.1.0"
      @text_to_draw=""
      @message = "Partho G presents"
      @count = 0
      self.load_assets
    end

    def begin!
      self.show
    end

    def update
      @text_to_draw = @text_to_draw+ @message[@count] if @count < @message.length
      @count+=1
    end

    def draw
      @font.draw(@text_to_draw, (@width/2), (@height/2), 3, 1, 1, Gosu::Color::WHITE)
      sleep 0.1
    end

    def button_up(key)
      self.close if key == Gosu::KbEscape
    end

    def load_assets
      @font = Gosu::Font.new(self, FONT_ASSETS[:font],40)
    end

  end
end
