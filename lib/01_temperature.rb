def ftoc(degrees)
  converted = ( degrees.to_f * 5.0 / 9.0) - (160.0/9.0)
  return converted
end

def ctof(degrees)
  converted = ( degrees.to_f + 160.0/9.0) * 9.0 / 5.0
  return converted
end
