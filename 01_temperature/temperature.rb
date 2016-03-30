def ftoc(fahrenheit)
  return ((fahrenheit - 32) * 5).to_f / 9
end

def ctof(celsius)
  return (celsius * 9).to_f / 5 + 32
end
