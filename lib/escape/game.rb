require 'gosu'
module Escape
  class Game < Gosu::Window
    def initialize
      super 1280, 720, fullscreen: true
      self.caption = "Escape v0.1.0"
    end

    def begin!
      self.show
    end

    def button_up(key)
      self.close if key == Gosu::KbEscape
    end

  end
end
