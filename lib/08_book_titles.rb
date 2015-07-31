class Book
  attr_accessor :title
  def initialize(title=nil)
    @title = title
  end

  def title=(new_title)
    @title = titleize(new_title)
  end
  def titleize(string)
    broken = string.split
    new_sentence = ""
    no = ["or", "and", "or", "and", "an", "a", "the", "at", "by", "for", "in", "on", "of", "to", "nor", "but", "as", "up"]
    broken.each_with_index do |word, index|
      if index != 0 && no.include?(word)
        new_sentence += word + " "
      else
        new_sentence += word.capitalize + " "
      end
    end
    new_sentence.strip
  end
end
