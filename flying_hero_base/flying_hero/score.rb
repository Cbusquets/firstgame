require 'gosu'

class Score
  def initialize
    @score = 0

  end

  def draw
    @score = Gosu::Image.from_text(window, 'Score: ' + @score, font_name, line_height)


  end

end
