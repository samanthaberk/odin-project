def caesar_cipher(str, shift)
  str = str.split(//)
  lower_case_letters = Hash[("a".."z").to_a.zip(1..26).to_a]
  upper_case_letters = Hash[("A".."Z").to_a.zip(1..26).to_a]
  cipher = []
  str.each do |letter|
    if lower_case_letters.include?(letter)
      value = lower_case_letters[letter] + shift
      if value > 26
        value -= 26
      end
      cipher << lower_case_letters.key(value)
    elsif upper_case_letters.include?(letter)
      value = upper_case_letters[letter] + shift
      if value > 26
        value -= 26
      end
      cipher << upper_case_letters.key(value)
    elsif
      cipher << letter
    end
  end
  return cipher.join
end

p caesar_cipher("What a string!", 5)

# def find_lowercase_letter(letter)
#   if lower_case_letters.include?(letter)
#     value = lower_case_letters[letter] + shift
#   end
# end
