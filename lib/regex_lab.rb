def starts_with_a_vowel?(word)
  !!word[0].match(/[aeiouAEIOU]/)
end

def words_starting_with_un_and_ending_with_ing(text)
  arr = text.split(" ")
  result = []
  arr.each do |word|
    word.scan(/\A+un/) !=[] && word.scan(/ing\b/)!=[] && result << word
  end
  result
end

def words_five_letters_long(text)
  text.scan(/\b[a-zA-Z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.scan(/\A+[A-Z]/) != [] && text[-1] == "." && text.split("").slice(0..-2).none?{|word| word=="."}
end

def valid_phone_number?(phone)
  phone_no_specials = phone.gsub(/[) (-]/,"")
  phone_no_specials.length == 10 && phone_no_specials.scan(/[A-Za-z]/) == [] ? true : false
end
