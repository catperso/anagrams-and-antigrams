class Anagramizer
  def anagram(word1, word2)
    word1_compare = word1.downcase.split('').sort
    word2_compare = word2.downcase.split('').sort
    if (word1_compare.none? {|e| e.match(/[aeiou]/i)}) || (word2_compare.none? {|e| e.match(/[aeiou]/i)})
      "I don't think those are real words D:"
    elsif word1_compare == word2_compare
      "Those words are anagrams!"
    else
      "Those words are not anagrams ):"
    end
  end






end