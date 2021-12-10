#!/usr/bin/env ruby

require('./lib/anagrams.rb')

puts "Welcome to the anagramizer!"
puts "Please enter the first word/phrase to compare:"
word1 = gets.chomp
puts "Please enter the second word/phrase to compare:"
word2 = gets.chomp
auntie_gram = Anagramizer.new
puts auntie_gram.anagram(word1, word2)