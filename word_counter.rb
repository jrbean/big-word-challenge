require 'pry'

class WordCounter

  def initialize l, d
    @length = length
    @dictionary = dictionary
  end

  def word_length
    @length
  end

  def count_of_words_matching_length
    @dictionary.each do |word|
      word.count(word.length == @length)
    end
  end
end

dictionary = File.read("/usr/share/dict/words").split
  # => ["A", "a", "aa", "aal", "aalii", "aam", "Aani", "aardvark", ...]
wc = WordCounter.new 5, dictionary

puts "Finding words of length #{wc.word_length} ..."
puts "There are #{wc.count_of_words_matching_length}"
