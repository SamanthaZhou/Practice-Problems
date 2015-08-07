class Array
  def sum
    total = 0
    self.each{|x| total += x}
    total
  end
  def square
    squares = []
    self.size < 1 ? self : self.each{|x| squares << x*x}
    squares
  end
  def square!
    self.size < 1 ? self : self.each_with_index{|x,idx| self[idx] = x*x}
  end
end
