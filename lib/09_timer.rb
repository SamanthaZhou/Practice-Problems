class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def hrs
    padded(seconds / 3600).to_s
  end

  def mins
    padded((seconds % 3600) / 60).to_s
  end

  def secs
    padded((seconds % 3600) % 60).to_s
  end

  def time_string
    "#{self.hrs}:#{self.mins}:#{self.secs}"
  end

  def padded(n)
    "#{n}".rjust(2,"0")
  end
end
