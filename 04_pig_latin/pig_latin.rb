require "pry-byebug"

def translate(string)
  vowel = %w(a e i o)
  words = string.split(" ")
  result = []
  words.each do |word|
    letters = word.split("")
    while vowel.include?(letters[0]) == false
      first_letter = letters[0]
      letters.delete_at(0)
      letters << first_letter
    end
    letters << "ay"
    result << letters.join
  end
  return result.join(" ")
end
