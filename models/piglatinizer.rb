
class PigLatinizer

	def initialize

	end

	def is_a_vowel(letter)
		if ["A","E", "I", "O", "U", "a", "e", "i", "o", "u"].include?(letter)
			return true
		elsif letter == nil
			return false
		else
			return false
		end
	end

	def piglatinize(word)
		new_word = ''
		word_array = word.chars
		first_letter = word.chars[0]
		second_letter = word.chars[1]
		third_letter = word.chars[2]
		if word.length < 1
			new_word = "#{word}" + "way"
		elsif is_a_vowel(first_letter)
			# pig_latin_end = first_letter + "way"
			# new_word = (word_array - [first_letter]).join
			new_word = "#{word}" + "way"
		elsif !is_a_vowel(first_letter) && !is_a_vowel(second_letter)
			if !is_a_vowel(third_letter)
				pig_latin_end = [first_letter,second_letter,third_letter,"ay"].join
				new_word = (word_array - [first_letter, second_letter, third_letter]).join
				new_word = "#{new_word}" + "#{pig_latin_end}"
			else
				pig_latin_end = first_letter + second_letter + "ay"
				new_word = (word_array - [first_letter, second_letter]).join
				new_word = "#{new_word}" + "#{pig_latin_end}"
			end
		else
			pig_latin_end = first_letter + "ay"
			new_word = (word_array - [first_letter]).join
			new_word = "#{new_word}" + "#{pig_latin_end}"
		end
		new_word
	end


	def to_pig_latin(sentence)
		array = sentence.split(" ")
		new_arr = array.map {|word| self.piglatinize(word)}
		new_arr.join(" ")
	end

end