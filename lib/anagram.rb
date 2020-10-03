#Your class, Anagram should take a word on initialization, and instances should respond to a match method
#that takes an array of possible anagrams.
#It should return all matches in an array.
#If no matches exist, it should return an empty array.

class Anagram
  attr_accessor :word # whenever there is an argument for a class, throw it into an attr_accessor
                      # with classes this attr_accessor is how you take input
  def initialize(word)
    @word = word
  end

  def match(string)
    string.select do |w| # w represents a word, and each doesn't allow us t cvhsange these objects
      w.split("").sort == word.split("").sort # you need to split the word into letters, then you need to sort them alphabetically
    end
  end
end
