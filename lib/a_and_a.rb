require ('pry')

class AAA
  attr_accessor(:word1, :word2)
  def  initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

   def is_word?
    # vowels = ["a", "e", "i", "o", "u", "y"]
    first_word = @word1
    sec_word = @word2
    if first_word.count('aeiouy') >= 1 && sec_word.count('aeiouy') >= 2 
      return true
      binding.pry
    else 
      return "You need to input an actual word"
    end
  end

  def anagrams?
   if (word1.chars.sort == word2.chars.sort) 
    "These words are anagrams."
   elsif (word1.chars.sort != word2.chars.sort) 
    "These words are not anagrams"
    end
  end

 
end

