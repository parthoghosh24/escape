require_relative "escape/version"
require_relative "escape/game"
module Escape
  def self.init
    begin
      $game = Escape::Game.new
      $game.begin!
    rescue Interrupt => err
      puts "\r Something went wrong! Please try again"
    end
  end
end

Escape.init
