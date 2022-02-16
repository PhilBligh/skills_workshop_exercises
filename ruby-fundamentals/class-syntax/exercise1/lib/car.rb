class Car
  def initialize
    @speed = 0
  end

  def speed
    return @speed
  end

  def accelerate(n)
    @speed += n
  end

  def brake(n)
    @speed -= n
  end

end
