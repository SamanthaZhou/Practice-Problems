def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, index = "2")
  outcome = []
  index = index.to_i
  while index > 0
    outcome = outcome.push(string)
    index -= 1
  end
  return outcome.join(" ")
end

def start_of_word(string, index)
  outcome=[]
  index = index.to_i - 1
  while index >= 0
    outcome = outcome.unshift(string[index])
    index -= 1
  end
  return outcome.join("")
end

def first_word(string)
  first = ""
  index = 0
  while index < string.length
    if string[index] == " "
      first = string[0, index]
    end
    index += 1
  end
  if first.length == 0
    return string
  else
    return first
  end
end

def titleize(string)
  broken = string.split
  sentence = []
  index = 0
  current = ""
  while index < broken.length
    current = broken[index].capitalize
    if ((broken[index] == "or") || (broken[index] == "and") || (broken[index] == "an") || (broken[index] == "a") || (broken[index] == "the") || (broken[index] == "at") || (broken[index] == "by") || (broken[index] == "for") || (broken[index] == "in") || (broken[index] == "on") || (broken[index] == "of") || (broken[index] == "to") || (broken[index] == "nor") || (broken[index] == "but") || (broken[index] == "as") || (broken[index] == "up")|| (broken[index] == "over")) && (index > 0 )
      current = broken[index]
    end
    sentence = sentence.push(current)
    index += 1
  end
  return sentence.join(" ")
end
