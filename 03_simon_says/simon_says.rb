def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, num = 2)
  array = []
  num.times {array << string}
  return array.join(" ")
end

def start_of_word(string, num)
  return string.split('')[0..num-1].join
end

def first_word(string)
  return string.split(" ")[0]
end

def titleize(string)
  small_words = ["and", "the", "of", "over"]
  words = string.split(" ")
  words.each do |word|
    if small_words.include?(word) == false || words.index(word) == 0
      word.capitalize!
    end
  end
  return words.join(" ")
end
