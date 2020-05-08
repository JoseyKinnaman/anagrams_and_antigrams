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
end

describe("AAA#is_word") do 
  it("checks if inputs are words") do
    words = AAA.new("yurb","ruby")
    expect(words.is_word?).to(eq("You need to input actual words!"))
  end
end