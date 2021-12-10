#!/usr/bin/env ruby

require('./lib/anagrams.rb')

puts "  ▄████████ ███▄▄▄▄      ▄████████    ▄██████▄     ▄████████    ▄████████   ▄▄▄▄███▄▄▄▄      ▄████████  "
puts "  ███    ███ ███▀▀▀██▄   ███    ███   ███    ███   ███    ███   ███    ███ ▄██▀▀▀███▀▀▀██▄   ███    ███ "
puts "  ███    ███ ███   ███   ███    ███   ███    █▀    ███    ███   ███    ███ ███   ███   ███   ███    █▀  "
puts "  ███    ███ ███   ███   ███    ███  ▄███         ▄███▄▄▄▄██▀   ███    ███ ███   ███   ███   ███        "
puts "▀███████████ ███   ███ ▀███████████ ▀▀███ ████▄  ▀▀███▀▀▀▀▀   ▀███████████ ███   ███   ███ ▀███████████ "
puts "  ███    ███ ███   ███   ███    ███   ███    ███ ▀███████████   ███    ███ ███   ███   ███          ███ "
puts "  ███    ███ ███   ███   ███    ███   ███    ███   ███    ███   ███    ███ ███   ███   ███    ▄█    ███ "
puts "  ███    █▀   ▀█   █▀    ███    █▀    ████████▀    ███    ███   ███    █▀   ▀█   ███   █▀   ▄████████▀  "
puts "                                                   ███    ███                                           "

puts "   ______                __           __   __                  __  ___      __  __     ______   "
puts "  / ____/_______  ____ _/ /____  ____/ /  / /_  __  __   _    /  |/  /___ _/ /_/ /_   / ____/   "
puts " / /   / ___/ _ \\/ __ `/ __/ _ \\/ __  /  / __ \\/ / / /  (_)  / /|_/ / __ `/ __/ __/  / /        "
puts "/ /___/ /  /  __/ /_/ / /_/  __/ /_/ /  / /_/ / /_/ /  _    / /  / / /_/ / /_/ /_   / /___   _  "
puts "\\____/_/   \\___/\\__,_/\\__/\\___/\\__,_/  /_.___/\\__, /  (_)  /_/  /_/\\__,_/\\__/\\__/   \\____/  (_) "
puts "                                             /____/                                             "

do_it_again = ""
auntie_gram = Anagramizer.new
puts "Welcome to the Anagramizer!"
until (do_it_again == "n")
  do_it_again = ""
  puts "Please enter the first word/phrase to compare:"
  word1 = gets.chomp
  puts "Please enter the second word/phrase to compare:"
  word2 = gets.chomp
  puts auntie_gram.anagram(word1, word2)
  puts auntie_gram.palindrome(word1, word2)
  puts "Would you like to do it again? (Y/N only please):"
  until (do_it_again.match(/[yn]/i))
    do_it_again = gets.chomp.downcase
    if (do_it_again.match(/[^yn]/i))
      puts "Y or N only please"
    end
  end
end
puts "I hope you enjoyed the Anagramizer!"