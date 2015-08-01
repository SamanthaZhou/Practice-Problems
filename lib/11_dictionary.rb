class Dictionary
  def initialize(entries = {})
    @entries = entries
  end

  def entries
    @entries
  end

  def add(entry)
    @entries[entry]= nil if entry.is_a?(String)
    entry.each{|key, value| @entries[key]=value} if entry.is_a?(Hash)
  end

  def include?(key)
    @entries.include?(key)
  end

  def keywords
    @entries.keys.sort
  end

  def printable
    array = []
    keywords.each do |key|
      values = @entries[key]
      array << "[#{key}] \"#{values}\""
    end
    array.join("\n")
  end

  def find(word)
    found = {}
    keywords.each do |key|
      found[key] = entries[key] if key.include? word
    end
    found
  end
end
