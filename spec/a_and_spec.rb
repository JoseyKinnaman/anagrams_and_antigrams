require ('rspec')
require ('pry')
require ('a_and_a')

describe("AAA#anagrams") do
  it("checks if two words are anagrams") do
    words = AAA.new("tea","eat")
    expect(words.anagrams?).to(eq("These words are anagrams."))
  end
  it("checks for the possibility that words might have different cases but should still be anagrams.") do
    words = AAA.new("Tea","Eat")
    expect(words.anagrams?).to(eq("These words are anagrams."))
  end
  it("checks and removes all non-characters from a string") do
    words = AAA.new("tea!", "eat.")
    expect(words.anagrams?).to(eq("These words are anagrams."))
  end
  it("checks for the possibility that input may have multiple words but should still be anagrams.") do
    words = AAA.new("stop, eat, team", "pots, tea, meat")
    expect(words.anagrams?).to(eq("These words are anagrams."))
  end
end

describe("AAA#is_word?") do 
  it("checks if inputs are words") do
    words = AAA.new("rbtt", "Ruby")
    expect(words.is_word?).to(eq("You need to input an actual word"))
  end
end

describe("AAA#is_antigram?") do
  it("checks if inputs aren't anagrams, then the method should check whether they are actually 'antigrams.'") do
    words = AAA.new("hi", "bye")
    expect(words.is_antigram?).to(eq(true))
  end
end
