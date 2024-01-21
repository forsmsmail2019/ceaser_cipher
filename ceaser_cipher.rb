def ceasar_cipher(text,key)
  result = ""
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
    #p small_letter
    #p cap_letter
    # check with any char in the entred text if its cap or not
    text.each_char {|c|
    # if capital latter
    if cap_letter.include?(c)
      #print "#{c.ord} is capital letter "
      #if the factor number is more than 25
      if (c.ord - 65 + key) > 25
        shift = (c.ord - 65 + key) % 26
        #puts "it will shift by #{shift}"
        tmp_letter = cap_letter[shift]
      else
        tmp_letter = cap_letter[c.ord - 65 + key]
      end
      #puts tmp_letter
      result +=tmp_letter
    else
      #print "#{c} is not capital letter "
      if (c.ord - 97 + key) > 25
        shift = (c.ord - 97 + key) % 26
        #puts "it will shift by #{shift}"
        tmp_letter = small_letter[shift]
      else
        tmp_letter = small_letter[c.ord - 97 + key]
      end
      #puts tmp_letter
      result +=tmp_letter
    end

  }
  return result
else
    puts "please enter a text"
end

end
