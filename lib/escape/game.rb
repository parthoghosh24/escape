require 'gosu'
module Escape
  class Game < Gosu::Window

    FONT_ASSETS = {
      font: "assets/fonts/pixelade-webfont.ttf"
    }

    def initialize
      super 1280, 720, fullscreen: true
      self.caption = "Escape v0.1.0"
      self.load_assets
    end

    def begin!
      self.show
    end

    def draw

      @font.draw("P", 20, 10, 3, 1, 1, Gosu::Color::WHITE)
      @font.draw("a", 60, 10, 3, 1, 1, Gosu::Color::WHITE)
      @font.draw("r", 100, 10, 3, 1, 1, Gosu::Color::WHITE)
    end

    def button_up(key)
      self.close if key == Gosu::KbEscape
    end

    def load_assets
      @font = Gosu::Font.new(self, FONT_ASSETS[:font],80)
    end

  end
end
