require('rspec')
require('anagrams')

describe('Anagramizer') do
  it('will tell you if two words are anagrams') do
    auntie_gram = Anagramizer.new
    expect(auntie_gram.anagram("ruby", "bury")).to(eq("Those words are anagrams!"))
  end

end