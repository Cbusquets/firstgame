require 'gosu'

class Hero

  def initialize

    @sprites = Gosu::Image::load_tiles('assets/images/cat.png', 847/6, 87, tileable:false)
    @x = 10
    @y = 200
    @width = @sprites.first.width
    @height = @sprites.first.height
  end

  def draw

    sprites = @sprites[Gosu::milliseconds / 75 % @sprites.size]
    sprites.draw(@x, @y, 1)


  end

  def move_up!

    if @y > 0
      @y-= 5
    end

  end

  def move_down!(height)

      if @y + @height < height
        @y += 5
      end

  end

end