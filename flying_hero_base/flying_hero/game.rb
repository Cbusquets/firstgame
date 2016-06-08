require 'gosu'

class Game < Gosu::Window

  def initialize

    super(900, 440, fullscreen: false)

    self.caption = 'Flying Hero!'

  end

    def draw

    end

    def button_down(id)

      if id == Gosu::KbEscape

        close
      end
      
    end
end
