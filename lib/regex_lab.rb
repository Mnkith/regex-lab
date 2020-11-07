def starts_with_a_vowel?(word)
  /\b[aioueAEIOU]/ === word
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w*ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  /\A[A-Z].*[?!.:;]\Z/ === text
  # text.match(/\A[A-Z].*[?!.:;]\Z/) ? true : false
end

def valid_phone_number?(phone)
  /(\d{10}|\d{3} \d{3} \d{4}|\(\d{3}\)\d{3}-?\d{4})/ === phone #the very first ? followed by : is to turn off capturing
                                                            #groups since we don't need them
end
