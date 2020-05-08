require ('rspec')
require ('pry')
require ('a_and_a')

describe("AAA#anagrams") do
  it("checks if two words are anagrams") do
    words = AAA.new("tea","eat")
    expect(words.anagrams?).to(eq(true))
  end
end