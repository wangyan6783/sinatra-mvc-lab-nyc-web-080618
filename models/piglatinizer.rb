require 'pry'
class PigLatinizer

  def letters_to_words(word)
    @vowels = ["a", "e", "i", "o", "u"]
    letters = word.split("")
    if word.start_with?("a", "e", "i", "o", "u", "I", "E", "O")
      word+"way"
    elsif @vowels.include?(letters[1])
      letters.push(letters.shift).join("") + "ay"
    elsif @vowels.include?(letters[2])
      letters.push(letters.shift(2)).join("") + "ay"
    else
      letters.push(letters.shift(3)).join("") + "ay"
    end
  end

  def piglatinize(string)
    words = string.split(" ")
    words.map do |word|
      letters_to_words(word)
    end.join(" ")
  end

end #END CLASS
