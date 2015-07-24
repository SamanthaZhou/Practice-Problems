def reverser
  array = yield.split
  new_words = array.collect{|word| word.reverse}
  new_sentence = new_words.join(" ")
end

def adder(added = 1)
  number = yield
  number += added
end

def repeater(n=nil)
  unless n
    yield
  else
    n.times{yield}
  end
end
