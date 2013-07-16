File.open("words.txt", "r").each_line do |line|
		array_word = line.chomp.downcase
		array_word = array_word.split(//)
		array_word.sort!
		converted_word = array_word.join
		Word.create(dict_word: line.chomp,
			lower_case_word: converted_word)
end