class Word < ActiveRecord::Base

  def self.anagrams(search_word)
    converted_input = search_word.chomp.downcase.split(//).sort.join

    Word.find_all_by_lower_case_word(converted_input).map {|word_obj| word_obj.dict_word}


  end

  # Remember to create a migration!
end
