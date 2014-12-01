dictionary = File.open('db/words')

dictionary.each_line do |entry|
 Word.create(word: entry.chomp, sorted_letters: entry.chomp.downcase.split("").sort.join )
end