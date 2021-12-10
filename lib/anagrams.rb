class Anagramizer
  def anagram(word1, word2)
    word1_compare = word1.split('').sort
    word2_compare = word2.split('').sort
    if word1_compare == word2_compare
      "Those words are anagrams!"
    else
      "Those words are not anagrams :("
    end
  end






end