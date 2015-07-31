class Temperature
  def initialize(opts = {})
    @options = opts
  end
  def in_celsius
    @options.has_key?(:c) ? @options[:c] : ((@options[:f].to_f * 5.0 - 160.0) / 9.0)
  end
  def in_fahrenheit
    @options.has_key?(:f) ? @options[:f] : (@options[:c].to_f + 160.0 / 9.0) * 9.0 / 5.0
  end

  def self.from_celsius(n)
    Temperature.new(c: n)
  end

  def self.from_fahrenheit(n)
    Temperature.new(f: n)
  end
end

class Celsius < Temperature
  def initialize(n)
    super(c: n)
  end
end

class Fahrenheit < Temperature
  def initialize(n)
    super(f: n)
  end
end
