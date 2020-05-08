require ('pry')
# require ('dictionary', '~> 1.0')

class AAA
  def  initialize(word1, word2)
    @word1 = word1.downcase.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
    @word2 = word2.downcase.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')
  end
 
  def anagrams?
    choice1 = @word1.split("").sort
    choice2 = @word2.split("").sort
    if 
    self.is_word?
    if (choice1 == choice2) 
      "These words are anagrams."
    elsif 
      self.is_antigram?
      "These words are not anagrams but hey, they are antigrams!"
    else
      "These words are not anagrams or antigrams...sorry!"
      end
      binding.pry
    end
  end

# method for determining if input is a "word"
  def is_word?
    first_word = @word1.split(" ")
    sec_word = @word2.split(" ")
    if first_word.all?{ |str| str.count('aeiouy') >= 1} && sec_word.all?{ |str| str.count('aeiouy') >= 1} 
      true
    else 
    "You need to input an actual word"
    end
  end

  # method for determining if inputs are an antigram.
  def is_antigram?
    input1 = @word1.split("").sort
    input2 = @word2.split("").sort
    if
      input1.any?{|input1| input2.include?(input1)}
      false
    else
      true
    end
  end
  
end

