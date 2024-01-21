def ceasar_cipher(text,key)
  small_letter = "abcdefghijklmnopqrstuvwxyz".split("")
  result = ""
  cap_letter = small_letter.map do |letter|
    letter.upcase
  end

  if !key.is_a? Numeric
    puts "please enter a shift factor number"
    return
  end

  if text.is_a? String
      #p small_letter
      #p cap_letter
      text.each_char {|c|
      if cap_letter.include?(c)
        #print "#{c.ord} is capital letter "
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
    puts result
    return result
  else
      puts "please enter a text"
  end

end

ceasar_cipher("ZZZZzzZ",2)
