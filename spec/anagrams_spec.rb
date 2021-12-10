require('rspec')
require('anagrams')

describe('Anagramizer#anagram') do
  it('will tell you if two words are anagrams') do
    auntie_gram = Anagramizer.new
    expect(auntie_gram.anagram("ruby", "bury")).to(eq("Those words are anagrams!"))
  end

  it('will tell you if two words are not anagrams') do
    auntie_gram = Anagramizer.new
    expect(auntie_gram.anagram("crying", "phlegm")).to(eq("Those words are not anagrams ):"))
  end

  it('will tell you if the words are anagrams regardless of case') do
    auntie_gram = Anagramizer.new
    expect(auntie_gram.anagram("Tea", "Eat")).to(eq("Those words are anagrams!"))
  end

  it('will complain if you do not input words with at least one vowel') do
    auntie_gram = Anagramizer.new
    expect(auntie_gram.anagram("Phblthp", "Phtlbhp")).to(eq("I don't think those are real words D:"))
  end

  it('will check if non-anagram words are actually antigrams') do
    auntie_gram = Anagramizer.new
    expect(auntie_gram.anagram("horrible", "cat")).to(eq("Those words are antigrams O:"))
  end

  it('will work for sentences as well as words, regardless of punctuation') do
    auntie_gram = Anagramizer.new
    expect(auntie_gram.anagram("The Morse Code", "Here come dots!")).to(eq("Those words are anagrams!"))
  end
end