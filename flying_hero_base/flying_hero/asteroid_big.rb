require 'gosu'
require_relative 'asteroid'

class AsteroidBig < Asteroid
  def initialize(window)
    super
    @height = @image.height * self.class.scale_y
    @width = @image.width * self.class.scale_x

  end

  def move!
    @x -= 15
  end

  def self.scale_x
    2
  end

  def self.scale_y
    2
  end

end
