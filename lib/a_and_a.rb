require ('pry')

class AAA
  def  initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

   def is_word?
    first_word = @word1
    sec_word = @word2
    if first_word.count('aeiouy') >= 1 && sec_word.count('aeiouy') >= 1 
      return true
    else 
      return "You need to input an actual word"
    end
  end

  def anagrams?
    choice1 = @word1.downcase.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '').split("").sort
    choice2 = @word2.downcase.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '').split("").sort
   if (choice1 == choice2) 
    "These words are anagrams."
   else
    "These words are not anagrams"
    end
    binding.pry
  end

 
end

