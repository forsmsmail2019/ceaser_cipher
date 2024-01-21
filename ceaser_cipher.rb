def ceasar_cipher(text,key)
  small_letter = "abcdefghijklmnopqrstuvwxyz".split("")
  cap_letter = small_letter.map do |letter|
    letter.upcase
  end

  #check if the factor number is numeric
  if !key.is_a? Numeric
    puts "please enter a shift factor number"
    return
  end

  #check if the text is text
  if text.is_a? String

  return result
else
    puts "please enter a text"
end

end
