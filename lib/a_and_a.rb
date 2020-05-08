require ('pry')

class AAA
  def  initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagrams?
    choice1 = @word1.downcase.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '').split("").sort
    choice2 = @word2.downcase.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '').split("").sort
   if (choice1 == choice2) 
    "These words are anagrams."
   else
    "These words are not anagrams"
    end
  end

  def is_word?
    first_word = @word1.downcase.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '').split(" ")
    sec_word = @word2.downcase.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '').split(" ")
    if first_word.all?{ |str| str.count('aeiouy') >= 1} && sec_word.all?{ |str| str.count('aeiouy') >= 1} 
      true
    else 
    "You need to input an actual word"
    end
  end

  def is_antigram?
  end
end

