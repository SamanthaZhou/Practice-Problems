def reverser(string)
  broken = string.split
  new_word = ""
  new_sentence = ""
  idx1 = 0
  idx2 = 0
  while idx1 < broken.length
    current_word = broken[idx1]
    while idx2 < current_word.length
      current_letter = current_word[idx2]
      new_word = new_word + current_letter
      idx2 += 1
    end
    new_sentence = new_sentence + " " + new_word
    idx1 += 1
  end
  return new_sentence
end
