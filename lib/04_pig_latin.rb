def translate(string)
  broken = string.split
  vowels = ["a", "e", "i", "o", "u"]
  new_sentence = ""
  idx2 = 0

  while idx2 < broken.length
    current_word = broken[idx2]
    current_letter = current_word[0]
    new_word = ""

    if (vowels.include? (current_letter))
      new_word = current_word + "ay"

    else
      idx1 = 0
      while (!vowels.include?(current_letter))
        if current_word[0,2]=="qu"
          new_word = new_word + current_word[0,1]
          idx1 += 1
          current_letter = current_word[idx1]
        elsif current_word[idx1,idx1+1]=="qu"
          new_word = new_word + current_word[idx1,idx1]
          idx1 += 1
          current_letter = current_word[idx1]
        end
        new_word = new_word + current_letter
        idx1 += 1
        current_letter = current_word[idx1]
      end
      new_word = current_word[idx1..-1] + new_word + "ay"
    end

    new_sentence = new_sentence + new_word
    idx2 += 1
    if broken[idx2] != nil
      new_sentence = new_sentence + " "
    end
  end

  return new_sentence
end
