require ('pry')

class AAA
  attr_accessor(:word1, :word2)
  def  initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def anagrams?
   if (word1.chars.sort == word2.chars.sort) 
    "These words are anagrams."
   elsif (word1.chars.sort != word2.chars.sort) 
    "These words are not anagrams"
    end
  end
end

