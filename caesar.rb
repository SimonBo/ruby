def caesar_cipher(message, shift)
  letter_hash={}
  letter_hash_capital={}
  final_string=""
  nr=1
  ('a'..'z').to_a.each do |letter|
    letter_hash[letter]= nr
    nr+=1 
  end

  nr_for_capital=1
  ('A'..'Z').to_a.each do |letter|
    letter_hash_capital[letter]= nr_for_capital
    nr_for_capital+=1 
  end

  message.split("").each do |letter|
    if letter.match(/\W/)
      final_string << letter
    
    elsif letter_hash_capital.has_key?(letter)
      final_key= letter_hash_capital[letter]+shift
      # puts final_key

      if final_key>26 
        final_key=final_key % 26
          if final_key==0
            final_key=letter_hash_capital[letter]
          end
      end
      # puts letter_hash_capital.key(final_key)

      final_string << letter_hash_capital.key(final_key).to_s
   
    else

      # puts letter

      final_key= letter_hash[letter]+shift
      # puts final_key
      if final_key>26 
        final_key=final_key % 26
          if final_key==0
            final_key=letter_hash[letter]
          end
      end
      # puts letter_hash.key(final_key)

      final_string << letter_hash.key(final_key).to_s
      # final_string << letter_hash[(letter_hash[letter]+shift)].to_s
    end
  end
  puts final_string
end

caesar_cipher("huj",2)
caesar_cipher("What a string!", 5)
caesar_cipher("huj",200)

# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"
