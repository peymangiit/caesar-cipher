def caesar_cipher(string, shift = 1)
    #making hash words corresponding shifted chars 
    alphabet  = Array('a'..'z')
    non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]
    
    alphabet = Array('A'..'Z')
    caps     = Hash[alphabet.zip(alphabet.rotate(shift))]
  
    encrypter = non_caps.merge(caps)
    
    string.chars.map { |c| encrypter.fetch(c, c) }
  end

  puts "please write something"
  string = gets.chomp
  puts "please write a number to shift"
  shift = gets.to_i
  p caesar_cipher(string, shift).join