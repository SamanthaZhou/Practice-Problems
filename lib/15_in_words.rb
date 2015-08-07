class Fixnum
  $ones = {1 => "one ", 2 => "two ", 3 => "three ", 4 => "four ", 5 => "five ",
    6 => "six ", 7 => "seven ", 8 => "eight ", 9 => "nine "}
  $teens = {10 => "ten ", 11 => "eleven ", 12 => "twelve ", 13 => "thirteen ",
    14 => "fourteen ", 15 => "fifteen ", 16 => "sixteen ", 17 => "seventeen ",
    18 => "eighteen ", 19 => "nineteen "}

  def in_words
    return "zero" if self == 0
    array = [0,0,0,0,0,0,0,0,0,0,0,0,0]
    description = ["billion ", "million ", "thousand ", ""]
    name = ""
    idx1 = 1

    self.to_s.each_char do |x|
      array.shift
      array << x.to_i if x.to_i.is_a?(Integer)
    end

    name += $ones[array[0]] + "trillion " if array[0] != 0

    4.times do |idx2|
      a,b,c = array[idx1,3]
      name += hundreds(a,b,c,name) + description[idx2] if a != 0 || b != 0 || c != 0
      idx1 += 3
    end
    name.strip
  end

  def hundreds(a, b, c, name)
    name = ""
    if a != 0
      name += $ones[a] + "hundred "
    end

    if b != 0 && b != 1
      name += tens(b)
    end

    if b == 1
      name += $teens[[b,c].join.to_i]
    end

    if c != 0 && b != 1
      name += $ones[c]
    end
    name
  end

  def tens(number)
    name = ""
    if number == 2
      name += "twenty "
    elsif number == 3
      name += "thirty "
    elsif number == 4
      name += "forty "
    elsif number == 5
      name += "fifty "
    elsif number == 6
      name += "sixty "
    elsif number == 7
      name += "seventy "
    elsif number == 8
      name += "eighty "
    elsif number == 9
      name += "ninety "
    end
  end
end
