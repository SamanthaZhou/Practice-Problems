class Friend
  def greeting(n=nil)
    unless n
      "Hello!"
    else
      "Hello, #{n}!"
    end
  end
end
