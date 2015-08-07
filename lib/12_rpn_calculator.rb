class RPNCalculator
  def initialize(stacks = [])
    @stacks = stacks
  end

  def push(num)
    @stacks << num
  end

  def plus
    stereotypical{2.times{@total+=@stacks.pop.to_i}}
  end

  def minus
    stereotypical{@total += - @stacks.pop.to_i + @stacks.pop.to_i}
  end

  def divide
    stereotypical do
      second = @stacks.pop.to_f
      first = @stacks.pop.to_f
      @total += first / second
    end
  end

  def times
    stereotypical{@total += @stacks.pop.to_f * @stacks.pop.to_f}
  end

  def tokens(string)
    numbers = %w(0 1 2 3 4 5 6 7 8 9)
    output = []
    string = string.split(" ")
    string.each{|num| numbers.include?(num) ? (output << num.to_i) : (output << num.to_sym)}
    output
  end

  def evaluate(string)
    symbols = {:+ => Proc.new{plus}, :- => Proc.new{minus}, :/ => Proc.new{divide}, :* => Proc.new{times}}
    tokens(string).each do |x|
      if x.is_a?(Integer)
        self.push(x)
      elsif x.is_a?(Symbol)
        symbols[x].call
      end
    end
    @total
  end

  def stereotypical
    not_enough_values
    @total = 0
    yield
    @stacks << @total
  end

  def value
    @total
  end

  def not_enough_values
    raise "calculator is empty" if @stacks.count <2
  end
end
