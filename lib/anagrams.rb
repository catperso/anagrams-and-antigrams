class Anagramizer
  def anagram(word1, word2)
    word1_compare = word1.downcase.split('').sort.delete_if{|x| x.match(/[^a-z]/i)}
    word2_compare = word2.downcase.split('').sort.delete_if{|x| x.match(/[^a-z]/i)}
    if (word1_compare.none? {|e| e.match(/[aeiou]/i)}) || (word2_compare.none? {|e| e.match(/[aeiou]/i)})
      "I don't think those are real words D:"
    elsif word1_compare == word2_compare
      "Those words are anagrams!"
    else
      antigram = true
      word1_compare.each do |word1_element|
        word2_compare.each do |word2_element|
          if word1_element == word2_element
            antigram = false
          end
        end
      end
      if antigram
        "Those words are antigrams O:"
      else
        "Those words are not anagrams ):"
      end
    end
  end

  def palindrome(word1, word2)
    word1_array = word1.downcase.split('').delete_if{|x| x.match(/[^a-z]/i)}
    word2_array = word2.downcase.split('').delete_if{|x| x.match(/[^a-z]/i)}
    word1_results = false
    word2_results = false
    if word1_array == word1_array.reverse
      word1_results = true
    end
    if word2_array == word2_array.reverse
      word2_results = true
    end
    if word1_results && word2_results
      "Both words/phrases are palindromes!"
    elsif word1_results && !word2_results
      "The first word/phrase is a palindrome but the second is not."
    elsif word2_results && !word1_results
      "The second word/phrase is a palindrome but the first is not."
    else
      "Neither word/phrase is a palindrome :("
    end
  end
end