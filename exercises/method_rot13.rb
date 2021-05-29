def rot13(message)
  crypted_string = []
  
  message.chars.map do |letter|
    ascii_letter = letter.ord
    
    if ascii_letter >= 65 && ascii_letter <= 122
      if ascii_letter <= 77 || ascii_letter >= 97 && ascii_letter <= 109
        crypted_string << (letter.ord + 13).chr
      else
        crypted_string << (letter.ord - 13).chr
      end
    else
      crypted_string << letter
    end
  end
 
  crypted_string.join()
end

message_secrete = "Obyfbaneb, svyub qn chgn!"

puts rot13(message_secrete)