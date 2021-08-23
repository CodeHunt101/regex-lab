def starts_with_a_vowel?(word)
  !!word.match(/^[aeiouAEIOU]/)
end

def words_starting_with_un_and_ending_with_ing(text)
  arr = text.split(" ")
  result = arr.select {|word| word.match(/^un.*ing$/)}
end

def words_five_letters_long(text)
  text.scan(/\b[a-zA-Z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  !!text.match(/^[A-Z][^\.]*[\.\?\!]$/)
end

def valid_phone_number?(phone)
  phone_no_specials = phone.gsub(/[) (-]/,"")
  !!phone_no_specials.match(/[0-9]{10}/)
end
