class Word < ActiveRecord::Base
  def self.find_anagrams(word)
	Word.where("sorted_letters = ?", word.downcase.split(//).sort.join)
  end
end
