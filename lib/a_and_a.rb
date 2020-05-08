require ('pry')

class AAA
  attr_accessor(:word1, :word2)
  def  initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def anagrams?
    word1.chars.sort == word2.chars.sort
    # puts "These words are anagrams."
  end
end