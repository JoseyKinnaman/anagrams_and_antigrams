require ('rspec')
require ('pry')
require ('a_and_a')

describe("AAA#anagrams") do
  it("checks if two words are anagrams") do
    words = AAA.new()
    expect(words.anagrams("tea","eat")).to(eq("These words are anagrams."))
  end
end