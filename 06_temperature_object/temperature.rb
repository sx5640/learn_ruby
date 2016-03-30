class Temperature
  attr_accessor :f, :c

  def initialize(options = {})
    @f = options[:f]
    @c = options[:c]
    if c == nil
      self.c = ((f - 32) * 5).to_f / 9
    end
    if f == nil
      self.f = (c * 9).to_f / 5 + 32
    end
  end

  def to_celsius
    return c
  end

  def to_fahrenheit
    return f
  end

  def self.in_celsius(num)
    return self.new(c: num)
  end

  def self.in_fahrenheit(num)
    return self.new(f: num)
  end
end

class Celsius < Temperature
  def initialize(c)
    @c = c
    self.f = (c * 9).to_f / 5 + 32
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    @f = f
    self.c = ((f - 32) * 5).to_f / 9
  end
end
