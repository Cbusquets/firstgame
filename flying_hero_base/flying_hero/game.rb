require 'gosu'
require_relative 'background'
require_relative 'hero'

class Game < Gosu::Window

  def initialize

    super(900, 440, fullscreen: false)

    self.caption = 'Flying Hero!'

    @background = Background.new
    @hero = Hero.new

  end

    def draw

      @background.draw
      @hero.draw

    end

    def button_down(id)

      if id == Gosu::KbEscape

        close
      end

    end
    def update

      @background.scroll!

      if button_down?(Gosu::KbUp)

        @hero.move_up!

      elsif button_down?(Gosu::KbDown)

      @hero.move_down!(height)



      end

    end
end
